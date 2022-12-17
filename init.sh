#!/bin/bash

set -e

cd /tmp

DIR="/var/local-provision"
REPO="https://github.com/grumpy-systems/puppet-without-a-server.git"

if [ "$( which wget )" == "" ]; then
    echo "Installing required packages [wget]..."
    apt-get install -y wget
fi

if [ "$( which puppet )" == "" ]; then
    echo "Installing required packages [puppet]..."
    wget -q https://apt.puppetlabs.com/puppet5-release-bionic.deb
    dpkg -i puppet5-release-bionic.deb
    apt-get update
    apt-get install -y puppet
fi

if [ "$( which git )" == "" ]; then
    echo "Installing required packages [git]..."
    apt-get install -y git
fi

mkdir -p $DIR
cd $DIR

if [ ! -d "$DIR/.git" ]; then
    git init
    git remote add origin $REPO
fi

git fetch
git clean -fd
git reset --hard origin/master

echo "Applying latest changes..."

set +e
puppet apply --detailed-exitcodes --modulepath=$DIR/modules $DIR/manifests
STATUS=$?
set -e

if [ $STATUS -eq 0 ]; then
    echo "Everything already up to date."
    exit 0
fi

if [ $STATUS -eq 2 ]; then
    echo "Completed.  Some resources were modified."
    exit 0
fi

echo "Puppet encountered a failure.  See detailed output above."
exit 1

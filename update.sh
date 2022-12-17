#!/bin/bash

set -e

cd /tmp

DIR="/var/local-provision"
REPO="https://github.com/grumpy-systems/puppet-without-a-server.git"

cd $DIR

git fetch
git checkout -- .
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

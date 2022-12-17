# Puppet Without a Server

This is a demo / template / jumping off point for a topic I cover in my blog.
The idea is to run Puppet without a centralized puppet server for quick
provisions or small environments that don't warrant the full-fledged puppet
environment.

Details on what these files do, how to modify them, and the end goal are all
detailed on [this blog post](https://grumpy.systems/2021/puppet-without-a-puppet-server/)

## Running Things

Use this snippet (as root):

```bash
curl -s https://raw.githubusercontent.com/grumpy-systems/puppet-without-a-server/master/init.sh | bash
```

## License

Copyright 2021 Grumpy

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

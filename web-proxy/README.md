# Local web proxy

## Requirements

- Docker

## Installation

To make the weather API work, you must first get an API key from [Dark
Sky API](https://darksky.net/dev/)(it's free! ...and I hope it still is)

~~~ bash
$ ./bin/build
~~~

## Usage

~~~ bash
$ ./bin/run # run and auto-restart on reboot
$ docker run --rm -p 1080:1080 local-web-proxy # run temporarily
~~~

To stop a running image,

~~~ bash
$ ./bin/stop
~~~

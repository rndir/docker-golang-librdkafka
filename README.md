# About docker-golang-librdkafka

This project provides a Docker image containing a pre-built
version of [librdkafka][librdkafka] on top of Golang alpine image.

The image will be released using the pattern of `${GO_VERSION}-${LIBRDKAFKA_VERSION}`.  
Additional dependency such as [bzr][bzr] can be added, and will be set explicitly on the image tag.

[librdkafka]: https://github.com/edenhill/librdkafka
[bzr]: http://bazaar.canonical.com/en/

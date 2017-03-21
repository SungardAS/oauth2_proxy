[GitHub][github-url] | [DockerHub][dockerhub-url]

## Overview

oauth2_proxy container

* PLUGINS = "cpu,df,disk,elasticsearch,memory,swap"

## How To Run container on EC2 Instance to export to Cloudwatch



## How to view logs

```
docker logs collectd
```

## How to get to bash shell in running container to troubleshoot

```
docker exec -it collectd bash
```

## How To Build Container

```
docker build build -t sungardas/collectd-docker .
```

## Environment Variables



## License

Apache-2.0 ©

## Sungard Availability Services | Labs
[![Sungard Availability Services | Labs][labs-logo]][labs-github-url]

This project is maintained by the Labs team at [Sungard Availability
Services](http://sungardas.com)

GitHub: [https://sungardas.github.io](https://sungardas.github.io)

Blog:
[http://blog.sungardas.com/CTOLabs/](http://blog.sungardas.com/CTOLabs/)


[labs-github-url]: https://sungardas.github.io
[labs-logo]: https://raw.githubusercontent.com/SungardAS/repo-assets/master/images/logos/sungardas-labs-logo-small.png

[github-url]: https://github.com/SungardAS/oauth2_proxy
[dockerhub-url]: https://hub.docker.com/r/sungardas/oauth2_proxy
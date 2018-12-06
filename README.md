# dummy-ruby

Dummy project which sets up working Ruby on Rails application. Use following stack:

- postgresql
- redis
- sidekiq
- crono
- docker + docker-compose

## Usage

To use this setup, please first build the docker image:

```
$ docker-compose build
```

To run the containers, please execute:

```
$ docker-compose up -d
```

To access the Ruby On Rails application, please visit `http://localhost:3000`

## Debug

To view container logs (and follow them), please use:

```
$ docker-compose logs -f
```

## Shutdown

When you are done playing with containers, please bring them down using:

```
$ docker-compose down
```

## Stay clean

To avoid holding too much Docker trashes on you local machine, you could use below snippet:

```
$ docker system prune -f --volumes
$ docker rmi $(docker images -aq)
```

This will purge all unused containers and images from your local machine.

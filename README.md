# Django Docker Example

Example setup of Django development and deployment using Docker.

## Prerequisites

* [Docker Engine][]

## Getting Started

1.  Add two environment files, `.env` and `.env.docker.prod`. `.env` is for
    controlling the container runtime environment. `.evn.docker.prod` is used to
    alter the local environment for using Docker commands such as
    `docker-compose`. See [`env.example`](env.example) and
    [`env.docker.prod.example`](env.docker.prod.example) for more info.

1.  Build Docker Images

    This project builds two images, one for the Django app, and one for the
    Nginx web server.

    ```sh
    make prod-compose c=build
    ```

1.  Build and Run Docker Containers

    ```sh
    make dev-up
    ```

    For the production version, which also spins up nginx:

    ```sh
    make prod-up
    ```

1.  Stop and Remove Docker Containers

    ```sh
    make dev-down
    ```

    or

    ```sh
    make prod-down
    ```


[Docker Engine]: https://docs.docker.com/engine/installation/
# (TODO: name this app)

## Usage

0. Boot the app with

    ```
    $ docker-compose up
    ```

0. Run a rake db migration task inside the `web` container with

    ```
    $ docker-compose run web rake db:migrate
    ```

0. Rebuild the docker image (NOTE: only if you make changes to the Dockerfile or Gemfile!) with

    ```
    $ docker-compose build
    ```

## View the site in your browser

If using boot2docker, app will be running on http://192.168.59.103:3000 or if you're on a Linux host machine the container should be reachable on http://localhost:3000

## Troubleshooting

0. If something goes wrong with the above, you can always remove the web container and try again

    ```
    $ docker ps
    CONTAINER ID        IMAGE               COMMAND                CREATED             STATUS              PORTS                     NAMES
    083680fae997        postgres:latest     "/docker-entrypoint.   7 days ago          Up 39 minutes       0.0.0.0:49153->5432/tcp   dockerrailsseed_db_1
    $ docker rm -f 083680fae997
    $ make
    ```

0. If you must, you can remove the image completely (not recommended)

    ```
    $ docker images
    REPOSITORY                    TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
    dockerrailsseed_web           latest              26c4e3a5f9de        10 days ago         956.9 MB
    $ docker rmi 26c4e3a5f9de
    ```

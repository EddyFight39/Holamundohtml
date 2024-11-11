
# HTML Hello World with Docker

This project demonstrates a simple HTML "Hello World" application served using an Apache HTTP server within a Docker container.

## Project Structure

- `Dockerfile`: Configuration for building the Docker image.
- `docker-compose.yml`: Configuration for running the application using Docker Compose.
- `index.html`: The HTML file displayed when accessing the application.

## Prerequisites

- [Docker](https://www.docker.com/get-started) installed on your system.
- [Docker Compose](https://docs.docker.com/compose/install/) installed.

## Setup Instructions

1. **Clone this repository**:

    ```bash
    git clone https://github.com/yourusername/holamundohtml.git
    cd holamundohtml
    ```

2. **Create `index.html`** (if it doesn’t already exist):

    ```html
    <!DOCTYPE html>
    <html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Hola Mundo</title>
    </head>
    <body>
        <h1>¡Hola Mundo!</h1>
    </body>
    </html>
    ```

3. **Dockerfile**:

    ```dockerfile
    # Use Apache image from Docker Hub
    FROM httpd:2.4

    # Copy the HTML file to the Apache server's document root
    COPY ./index.html /usr/local/apache2/htdocs/
    ```

4. **docker-compose.yml**:

    ```yaml
    version: '3'
    services:
      myapp:
        build: .
        ports:
          - "80:80"
    ```

## Build and Run

1. **Build the Docker image**:

    ```bash
    docker-compose up --build
    ```

2. **Access the Application**:

   Open your browser and go to [http://localhost](http://localhost). You should see "¡Hola Mundo!".

3. **Shut Down the Application**:

    Press `CTRL + C` to stop the application or run:

    ```bash
    docker-compose down
    ```

## Pushing to Docker Hub

To upload this image to Docker Hub:

1. **Login**:

    ```bash
    docker login
    ```

2. **Tag the image**:

    ```bash
    docker tag holamundohtml yourdockerhubusername/holamundohtml
    ```

3. **Push the image**:

    ```bash
    docker push yourdockerhubusername/holamundohtml
    ```

## Additional Information

- This project uses the official `httpd` Docker image.
- Customize the `index.html` file to serve different content.

---

Enjoy your Dockerized HTML "Hello World" application!

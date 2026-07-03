# Xiaomi Mi 360 Camera to RTSP

This project provides a Dockerized solution to restream a Xiaomi Mi 360 1080p camera (`chuangmi.camera.046a01`) via RTSP using [go2rtc](https://github.com/AlexxIT/go2rtc).

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- A Xiaomi account with your camera added.
- The local IP address of your camera.

## Getting Started

1.  **Configure Environment:**
    Create a `.env` file in the root directory and add your camera's IP:
    ```env
    CAMERA_IP=192.168.1.123
    ```

2.  **Start the Container:**
    ```bash
    docker-compose up -d
    ```

3.  **Authenticate with Xiaomi:**
    - Open your browser and navigate to `http://localhost:1984`.
    - Click on **Add** -> **Xiaomi**.
    - Enter your Xiaomi account username and password.
    - If prompted, enter the verification code sent to your email or phone.
    - Once logged in, `go2rtc` will automatically update its configuration with the necessary tokens.

4.  **Access the RTSP Stream:**
    The RTSP stream will be available at:
    ```
    rtsp://localhost:8554/camera1
    ```

## Configuration

The configuration is stored in `config/go2rtc.yaml`. You can modify it to add more cameras or change streaming settings.

### Adding multiple cameras

To add more cameras, update the `streams` section in `config/go2rtc.yaml`:

```yaml
streams:
  camera1: xiaomi://192.168.1.123?model=chuangmi.camera.046a01
  camera2: xiaomi://192.168.1.124?model=some.other.model
```

## Credits

- [go2rtc](https://github.com/AlexxIT/go2rtc) by AlexxIT.

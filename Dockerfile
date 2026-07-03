FROM alexxit/go2rtc:latest

# Metadata
LABEL maintainer="Software Engineer"
LABEL description="Xiaomi Mi 360 Camera RTSP Restreamer using go2rtc"

# Ports for Web UI and RTSP
EXPOSE 1984 8554

# Standard command for go2rtc
# The base image alexxit/go2rtc has ENTRYPOINT ["/go2rtc"]
CMD ["-config", "/config/go2rtc.yaml"]

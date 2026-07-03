FROM alexxit/go2rtc:latest

# Metadata
LABEL maintainer="Software Engineer"
LABEL description="Xiaomi Mi 360 Camera RTSP Restreamer using go2rtc"

# Ports for Web UI and RTSP
EXPOSE 1984 8554

# Standard command for go2rtc
# The base image alexxit/go2rtc has ENTRYPOINT ["/sbin/tini", "--"]
# and default CMD ["go2rtc", "-config", "/config/go2rtc.yaml"]
# We will use the same but ensure go2rtc is called correctly.
CMD ["go2rtc", "-config", "/config/go2rtc.yaml"]

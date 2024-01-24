# Use Photon OS latest image
FROM photon:latest 

# Update and upgrade packages, then clean up cache to keep the image size small
RUN \
    --mount=type=cache,target=/var/cache/tdnf \
    tdnf check-update ; \
    tdnf update -y --allowerasing ; \
    tdnf clean all
# Use Photon OS latest image
FROM photon:latest

# Update and upgrade packages, then clean up cache to keep the image size small
RUN tdnf update -y \
    && tdnf upgrade -y \
    && tdnf clean all
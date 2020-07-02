ARG BASE_IMAGE
FROM $BASE_IMAGE

WORKDIR /cloud_controller_ng

COPY 0001-Add-environment-variables-to-kpack-image-CR.patch /cloud_controller_ng/
RUN patch -i 0001-Add-environment-variables-to-kpack-image-CR.patch --strip=1

COPY 0001-Ignore-updates-of-buildpack-e.g.-second-cf-push.patch /cloud_controller_ng/
RUN patch -i 0001-Ignore-updates-of-buildpack-e.g.-second-cf-push.patch --strip=1
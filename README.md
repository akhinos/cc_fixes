# Fix for Cloud Controller

This directory is used to rename the `VCAP_SERVICES` variable to `CNB_SERVICES`.

The patch file `0001-Add-environment-variables-to-kpack-image-CR.patch` is create with

```
git clone git@github.com:akhinos/cloud_controller_ng.git
cd cloud_controller_ng
git format-patch -M cnb_services^..cnb_services
```

We ran the fix with 
`
docker build . -t gcr.io/peripli/cloud-controller-ng --build-arg BASE_IMAGE=cloudfoundry/cloud-controller-ng:1ebab1cbb5270a3d51c0a098a37cd9e8ca0f721d@sha256:374f967edd7db4d7efc2f38cb849988aa36a8248dd240d56f49484b8159fd800
`

# Containerised NewRelic Infra Agent

This small package is designed to provide a containerised version of the NewRelic Infrastructure Agent, for machines that NewRelic otherwise can't run on (for example: M1 Macs).

### Instructions
[Docker](https://www.docker.com/products/docker-desktop/) must be installed

`setup.sh` has been provided to conveniently build and run the docker container. You will likely need to run it with `sudo`.

Before running `setup.sh`, modify `newrelic-infra.yml` to include the display name you want for the host, as well as the license key. The license key can be grabbed from [here](https://one.newrelic.com/api-keys) under `INGEST_LICENSE`.

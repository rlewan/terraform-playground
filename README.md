# Terraform Playground

A simple project to play around with [Terraform](https://terraform.io/) and setup a [Kubernetes](https://kubernetes.io/) cluster on [Google Cloud Platform](https://cloud.google.com/).

## Access credentials

For Terraform to be able to create and configure stuff under your cloud account, you need to provide access information. Go [here](https://www.terraform.io/docs/providers/google/getting_started.html#adding-credentials) to learn how that can be done.

**Note:**

The guide will mention exporting credential file's location under `GOOGLE_CLOUD_KEYFILE_JSON`, but that should actually be `GOOGLE_APPLICATION_CREDENTIALS`.

## Setup

Terraform has to be initialised before you'll be able to do anything else:

```
$ terraform init
```

This will download vendor-related binaries and sync/set up terraform state.

## Usage  

Applying infrastructure changes is broken down into a 2 steps. First, you need to create an execution plan:

```
$ ./plan.sh
``` 

This will print out a breakdown of all changes Terraform will perform in order to bring your infrastructure to desired state. Results will also be stored in `infrastructure.tfplan` file, which is needed for the next step:

```
$ ./apply.sh
``` 

This will execute infrastructure changes. If `infrastructure.tfplan` is corrupt or out of sync with current infrastructure state, Terraform will ask you to generate a new one. The plan file will be cleaned up automatically after a successful apply.

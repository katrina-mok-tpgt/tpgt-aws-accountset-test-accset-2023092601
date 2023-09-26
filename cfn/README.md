# Panama cloudformation stacks.

Place all your cloudformation stacks within this folder.

The sections below provide some guidelines, but refer to the Platform Repo documentation on Confluence for more details.

https://tpgtelecom.atlassian.net/wiki/spaces/IC/pages/9399278276929/Platform+repo+-+Panama+-+Design

Filenames should start with `cfn-` in order be able to identify quickly that the file is a Cloudformation stack definition.

## Platform resources

For platform resources, to structure the Cloudformation templates under the AWS service the stack is provisioning.

This will make it easier to determine what the stack is managing.

eg:

```
├── cfn
│   ├── iam
│   │   └── cfn-custom-roles.yml
│   └── vpc
│       ├── cfn-devops-prod-base-vpc.yml
│       └── cfn-devops-test-base-vpc.yml
```

## Application resources

There is often a need to provision platform protected resources for an application in order to allow it to perform as designed.

The supporting Cloudformation resources should be put under `cfn/app/<appname>` in order to group the resources together.

This also makes it easier to collaborate with application teams by adding entries into `CODEOWNERS`

```
├── cfn
│   ├── app
|   │   └── helloworld
|   │   │   └── cfn-hellowworld-iam-custom-roles.yml
```

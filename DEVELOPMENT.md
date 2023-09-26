# Panama Pipeline - Base Platform Repo
This platform repo contains the base scripts and base cloudformation templates managed by Panama.

## Installation/Setup
Configure local python virtual environment and install development dependencies. You can run this to create a virtual environment in the .venv directory.

```bash
# Prepare python environment locally
python3 -m venv .venv
source .venv/bin/activate

# Pull in the latest changes from Panama base scripts and cloudformation templates sub modules
make prepare
```
## Configuration
Create `<branch/env>.yaml` files under `.config/` folder you want to manage/deploy via Panama
Any common config that is shared between all environment/branches should be defined under `common.yaml`

See [Config File Anatomy](https://tpgtelecom.atlassian.net/wiki/spaces/IC/pages/9399278276929/Platform+repo+-+Panama+-+Design#Panama-Config-file-anatomy%3A) for details.


## Linting and validating Cloudformation templates
```bash
make lint
make build
```

## Interacting with the platform templates
For any of the make targets below, ensure you're logged into the consumer account as admin.
### Creating changeset for the platform stacks
You can leverage on the below command to create changesets for your platform resources you have defined in [cfn/](cfn/README.md) folder.

```bash
make test
```

### Deploy platform stacks into respective environments.
:warning: This bypasses Panama stage-gates. Ensure you are aware of the changes that will be deployed on the account prior running this command locally.
Please be careful when running the below command on a production account.
```bash
make deploy
```

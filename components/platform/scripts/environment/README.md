# Environment

These scripts are used to copy cloud environment variables for local testing.

**THESE ARE A WORK IN PROGRESS AND MIGHT NOT WORK FOR EVERY ENGAGEMENT. MAKE SURE TO READ AND UNDERSTAND THE SCRIPTS.**

## `make install`

This script is used to install direnv and dumpenv, and setup both of them. The script modifies your ~/.bashrc file by appending the direnv hook at the very end.
Dir-Env is used to load environment variables from .env and .envrc files while in a shell.
Dump-env is used to create a environment file based off of local environment variables and an environment variable template (in this case .env.template)

## `make CLOUD=? .envrc`

This script is used to create a .envrc file that your dir-env while use as your local environment. The script looks for two sources for environments, the `?.env.template`, and your local environment variables that start with the prefix `ENV_PREFIX`, which is a configurable prefix. Once the `.envrc` file is created, it also allows direnv to access it, so that your shell will use that instead of local environment variables.

At the moment the only supported `CLOUD` is `azure`, which is the default. Eventually we will support other clouds.

## Use of tools

Make install will handle initial installation and setup, though you may need to install python3 if it does not already exist on your machine.

Once installed, you can either manually set up an .env file, or use dump-env if you have a template.

- Manual - Simply create a .env or .envrc file that contains your needed environment variables, and ensure it is in the directory that they are needed in. Dir-env will locate them, and ensure they are used instead of your local environment variables
- Template - If you have a .env.template file, you can run `make create-env` to create a .envrc file based off of the template, and local environment variables. This will work by taking the template, finding local environment variables with "AZURE_ENV_" as a prefix, and appending them to associated variables within the template. New templates can be created, and new prefixes can be used, by editing the `--template='template-file'` and `--prefix='prefix'` variables within the make file, or by running the associated command within the shell.\
Using dump-env, secrets can be stored locally with the prefix `AZURE_ENV_`, and then can be combined with a template to create a usable .env file.


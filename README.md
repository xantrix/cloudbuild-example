# cloudbuild-example

https://cloud.google.com/cloud-build/docs/quickstart-build

## examples
https://github.com/GoogleCloudBuild/code-examples

## cloudbuild.yaml reference
https://cloud.google.com/cloud-build/docs/build-config
## cloud builders
https://cloud.google.com/cloud-build/docs/cloud-builders
## gcloudignore reference
https://cloud.google.com/sdk/gcloud/reference/topic/gcloudignore
https://cloud.google.com/sdk/gcloud/reference#--verbosity

## build image
### default config (cloudbuild.yaml)
gcloud builds submit --config cloudbuild.yaml --verbosity debug
gcloud builds submit
## other commands
### --verbosity debug, info, warning, error, critical, none | default="warning"
gcloud builds --help
qgcloud builds list


# default .gcloudignore
```
# This file specifies files that are *not* uploaded to Google Cloud Platform
# using gcloud. It follows the same syntax as .gitignore, with the addition of
# "#!include" directives (which insert the entries of the given .gitignore-style
# file at that point).
#
# For more information, run:
#   $ gcloud topic gcloudignore
#
.gcloudignore
# If you would like to upload your .git directory, .gitignore file or files
# from your .gitignore file, remove the corresponding line
# below:
.git
.gitignore
#!include:.gitignore
```
see skipping files in logs
```
DEBUG: Skipping file [.gitignore]
DEBUG: Skipping file [.hiddendir]
DEBUG: Skipping file [.git]
```
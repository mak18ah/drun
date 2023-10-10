#!/bin/bash

DRUN_UTILS_HOME()
{
    echo "/mnt/c/Users/mkhasawn/Documents/utils/drun"
}

aws ()
{
  MYOLDPWD="$PWD"  
  (cd "$(DRUN_UTILS_HOME)/awscli" && \
   MYOLDPWD="$MYOLDPWD" drun aws --profile default "$@")   
  #dos2unix drun.linux.properties
}

az ()
{
  MYOLDPWD="$PWD"  
  (cd "$(DRUN_UTILS_HOME)/azurecli" && \
   MYOLDPWD="$MYOLDPWD" drun az "$@")   
  #dos2unix drun.linux.properties
}

terraform ()
{
  MYOLDPWD="$PWD"  
  (cd "$(DRUN_UTILS_HOME)/terraform" && \
   MYOLDPWD="$MYOLDPWD" drun terraform "$@")   
}

aztfexport ()
{
  MYOLDPWD="$PWD"  
  (cd "$(DRUN_UTILS_HOME)/aztfexport" && \
   MYOLDPWD="$MYOLDPWD" drun aztfexport "$@")   
}

dive ()
{
  MYOLDPWD="$PWD"  
  (cd "$(DRUN_UTILS_HOME)/dive" && \
   MYOLDPWD="$MYOLDPWD" drun dive "$@")   
}

kubectl ()
{
  MYOLDPWD="$PWD"  
  (cd "$(DRUN_UTILS_HOME)/kubectl" && \
   MYOLDPWD="$MYOLDPWD" drun kubectl "$@")   
}

kubectx ()
{
  MYOLDPWD="$PWD"  
  (cd "$(DRUN_UTILS_HOME)/kubectl" && \
   MYOLDPWD="$MYOLDPWD" drun kubectx "$@")   
}

kubens ()
{
  MYOLDPWD="$PWD"  
  (cd "$(DRUN_UTILS_HOME)/kubectl" && \
   MYOLDPWD="$MYOLDPWD" drun kubens "$@")   
}

gitlab-runner ()
{
  MYOLDPWD="$PWD"  
  (cd "$(DRUN_UTILS_HOME)/gitlab-runner" && \
   MYOLDPWD="$MYOLDPWD" drun gitlab-runner "$@")   
}

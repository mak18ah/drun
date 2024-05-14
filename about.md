# drun

## Purpose
Hop between projects seamlessly by running shippable executable build containers anywhere.   

## How

Relay arbitrary commands into a target docker container, i.e a docker run [utility wrapper](drun)

## Installation
Clone this repository and run the installer:

```
./helper/install_drun.sh
```

Supported on Linux/OSX 

## Configuration 
Add properties file(`drun.properties`) targeting the host/s operating system to the root of the project directory. Currently, `linux\osx` host OS's are supported. The host OS is targeted by adding the supported host OS segment to the filename, either of the following options:
- drun.linux.properties 
- drun.osx.properties

The properties file is a set of key/value pairs that allows you to customize the following optional properties: specify docker image of choice, comma-delimited list of volumes to mount, assigning a working directory and comma-delimited list of options args that accepts any valid  `docker run` option

### Sample 

```
$ cat drun.linux.properties
image="golang:latest"
``` 

## Why
- Repeatability
- Isolation
- Portability 
- Cognitive Load Reduction  
- Context Switching
- Decrease Feeback Loop
- Simple Integrations


## Examples

#### Node
[![NodeJs](https://asciinema.org/a/45TCwUNplowwW5txQU4dCnjTG.svg)](https://asciinema.org/a/45TCwUNplowwW5txQU4dCnjTG)

#### PHP
[![PHP](https://asciinema.org/a/c2d5XhGwMoS9n3a3YtNrRyIeL.svg)](https://asciinema.org/a/c2d5XhGwMoS9n3a3YtNrRyIeL)

#### Python
[![Python](https://asciinema.org/a/xOTOC9eAHExRmUmBHdWDqihkl.svg)](https://asciinema.org/a/xOTOC9eAHExRmUmBHdWDqihkl)

#### DevOps
[![DevOps Utils](https://asciinema.org/a/Iqf4H9h16QaIvicMKCVRNFMI3.svg)](https://asciinema.org/a/Iqf4H9h16QaIvicMKCVRNFMI3)

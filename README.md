# ping-devops
Ping Identity DevOps Command-Line Tool 

## Installation

### Homebrew (on Mac)
The following utilities will also be installed (if not already) via the brew install:
* openssl
* base64
* kustomize
* kubectl
* envsubst
```
brew tap pingidentity/devops
brew install ping-devops
```

### Linux
The following install will copy the ping-devops tool and bash_profile aliases to current directory.  After which you should copy then to your preferred location in your path (i.e. ~/bin or /usr/local/bin).

```
curl -s https://raw.githubusercontent.com/pingidentity/ping-devops/master/install.sh | bash
```

Additionally, you will want to ensure you have the following utilities installed (typically with apk, yum, ...) that are used by ping-devops:
* openssl
* base64
* kustomize
* kubectl
* envsubst

## Usage

### Help

To get help for ping-devops, use no options.

```
ping-devops
```

### Config

To get configruation on your machine, use the `config` option.

```
ping-devops config
```

### Info

To get information about current configuration on your machine, use the `info` option.

```
ping-devops info
```

### Examples

To get examples, use the `examples` option.

```
ping-devops examples
```

## Commercial Support
THE SOFTWARE PROVIDED HEREUNDER IS PROVIDED ON AN "AS IS" BASIS, WITHOUT
ANY WARRANTIES OR REPRESENTATIONS EXPRESS, IMPLIED OR STATUTORY.

Please contact devops_program@pingidentity.com for details

## Copyright
Copyright © 2020 Ping Identity. All rights reserved.

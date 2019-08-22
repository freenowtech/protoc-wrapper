
# Protoc Wrapper

A simple wrapper for Google Protocol Buffer's "protoc" utility

## Install

Open the target folder (usually the root of the project) in terminal and paste:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/freenowtech/protoc-wrapper/master/install.sh)"
```

Follow the instruction to set the target protoc version

## Commit

After that you'll have 2 new files:
* `protocw`: the executable wrapper
* `protocw.properties`: the config file where the target version is set

Additionally:
* If you are using Git, `.protocw` folder will be added to your `.gitignore`
* If you are using Maven, the installer will try to replace the existing binary call with a call to the wrapper

(If not using Git, please make sure `.protocw` folder is marked as ignored on your VCS of choice)

## Usage

Run `./protocw [args]` when you would normally run `protoc [args]` 

Run `./protocw --configure` to setup the target protoc version

Run `./protocw --self-update` to update the wrapper to the latest version

Run `./protocw --help` to see the wrapper help and protoc help at once

## Author  

Lucas Laurindo dos Santos

https://github.com/lucasls

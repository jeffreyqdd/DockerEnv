# Linux Env

Launch a linux dev environment anywhere on your non linux operating system. 

## Installation
Requires docker with buildkit. 

1. clone repository
2. cd into project root
3. `make docker`

To access the included script anywhere, add this to your bashrc or zshrc
`export PATH=/path/to/project/root/bin:$PATH`


## Usage
- To launch a development environment, cd into the folder and type `dev-env run <container-name>`
- To develop, use dev containers on Visual Studio Code
- To attach a terminal, use `dev-env attach <container-name>`


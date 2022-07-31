#!/bin/env bash

packages=(
antfu.browse-lite
antfu.icons-carbon
antfu.theme-vitesse
antfu.where-am-i
dbaeumer.vscode-eslint
eamodio.gitlens
file-icons.file-icons
ms-azuretools.vscode-docker
ms-vscode-remote.remote-containers
ms-vscode.makefile-tools
redhat.vscode-yaml
usernamehw.errorlens
vivaxy.vscode-conventional-commits
Vue.volar
znck.grammarly
mads-hartmann.bash-ide-vscode
iocave.customize-ui
alefragnani.project-manager
)

for i in ${packages[@]}; do
  code --install-extension $i --force
done

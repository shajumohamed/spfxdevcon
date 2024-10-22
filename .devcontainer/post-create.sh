#!/bin/bash
echo -e "\e[1;92mDev container has been successfully provisioned!\e[0m"
echo -e "\e[1;94mNode Version:\e[0m $(node -v)"
echo -e "\e[1;94mGulp CLI Version:\e[0m $(gulp -v)"
echo -e "\e[1;94mYo Version:\e[0m $(yo --version)"
echo -e "\e[1;94mSPFx Generator Version:\e[0m $(npm list -g @microsoft/generator-sharepoint --depth=0 | sed -n 's/.*@microsoft\/generator-sharepoint@\([^\s]*\).*/\1/p')"

if [ ! -f package.json ]; then
  read -p "Are you provisioning a new project? (y/n): " answer
  if [[ "$answer" =~ ^[Yy]$ ]]; then
    yo @microsoft/sharepoint
  fi
fi
echo -e "\n\e[1;94mNote:\e[0m To use the 'gulp serve' command, you need to provision certificates and copy and install them locally."
read -p "Do you want to provision certificates? (y/n): " cert_answer
if [[ "$cert_answer" =~ ^[Yy]$ ]]; then
  bash ./.devcontainer/spfx-startup.sh
fi



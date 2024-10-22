#!/bin/bash
echo -e "\e[1;92mDev container has been successfully provisioned!\e[0m"
echo -e "\e[1;94mNode Version:\e[0m $(node -v)"
echo -e "\e[1;94mGulp CLI Version:\e[0m $(gulp -v)"
echo -e "\e[1;94mYo Version:\e[0m $(yo --version)"
echo -e "\e[1;94mSPFx Generator Version:\e[0m $(npm list -g @microsoft/generator-sharepoint --depth=0 | sed -n 's/.*@microsoft\/generator-sharepoint@\([^\s]*\).*/\1/p')"

read -p "Are you provisioning a new project? (y/n): " answer
if [[ "$answer" =~ ^[Yy]$ ]]; then
  yo @microsoft/sharepoint
fi


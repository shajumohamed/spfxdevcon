#!/bin/bash
echo -e "\e[1;92mDev container has been successfully provisioned!\e[0m"
echo -e "\e[1;94mNode Version:\e[0m $(node -v)"
echo -e "\e[1;94mGulp CLI Version:\e[0m $(gulp -v)"
echo -e "\e[1;94mYo Version:\e[0m $(yo --version)"
echo -e "\e[1;94mSPFx Generator Version:\e[0m $(npm list -g @microsoft/generator-sharepoint --depth=0 | sed -n 's/.*@microsoft\/generator-sharepoint@\([^\s]*\).*/\1/p')"

if [ ! -f package.json ]; then
  read -p "Do you want to provision a new project? (y/n): " answer
  if [[ "$answer" =~ ^[Yy]$ ]]; then
    yo @microsoft/sharepoint
  else
    echo "When you are ready, run 'bash .devcontainer/post-create.sh' to proceed."
    exit 0
  fi
fi

if [ -f package.json ]; then
  if [ -f spfx-dev-cert.pem ]; then
    echo -e "\n\e[1;94mNote:\e[0m To use the 'gulp serve' command, you need to copy and install the certificates locally."
    echo -e "Run 'bash ./.devcontainer/spfx-startup.sh' to provision certificates if not already done."
  else
    read -p "Do you want to provision certificates? (y/n): " cert_answer
    if [[ "$cert_answer" =~ ^[Yy]$ ]]; then
      bash ./.devcontainer/spfx-startup.sh
    else
      echo "When you are ready, run 'bash ./.devcontainer/spfx-startup.sh' to provision certificates."
    fi
  fi
fi



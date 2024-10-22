echo
echo -e "\e[1;94mInstalling Node dependencies\e[0m"
npm install

## commands to create dev certificate and copy it to the root folder of the project
echo
echo -e "\e[1;94mGenerating dev certificate\e[0m"
gulp trust-dev-cert


cp ~/.rushstack/rushstack-serve.key ./spfx-dev-cert.key
cp ~/.rushstack/rushstack-serve.pem ./spfx-dev-cert.pem

## add *.key to .gitignore to prevent certificates from being saved in repo
if ! grep -Fxq '*.key' ./.gitignore
  then
    echo "# .key Certificates" >> .gitignore
    echo "*.key" >> .gitignore
fi

## add *.pem to .gitignore to prevent certificates from being saved in repo
if ! grep -Fxq '*.pem' ./.gitignore
  then
    echo "# .PEM Certificates" >> .gitignore
    echo "*.pem" >> .gitignore
fi

echo
echo -e "\e[1;92mReady!\e[0m"

echo -e "\n\e[1;94m**********\nOptional: if you plan on using gulp serve, don't forget to add the container certificate to your local machine. Please visit https://aka.ms/spfx-devcontainer for more information\n**********"

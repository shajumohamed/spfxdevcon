# SharePoint Framework Dev Container Template for new Projects

A starter customizable template to quickly develop SPFx solutions. 

## Steps to execute
* Clone the repo into a dev container

   [![Open in Remote - Containers](https://img.shields.io/static/v1?style=for-the-badge&label=Remote%20-%20Containers&message=Open&color=blue&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/SPFxDevcontainers/1.20.0)

* Follow the instructions in terminal to create a new project and provision debug certificates.


* You will need to copy the certificate to the local machine and install it as instructed
  ```
  certutil -user -addstore root spfx-dev-cert.pem
  ```
  ![image](https://github.com/shajumohamed/spfxdevcon/assets/2860546/86cbbbb4-1701-4ba6-b730-b4e8e46bcb6b)

* Run the project
  ```
  gulp serve
  ```
  ![image](https://github.com/shajumohamed/spfxdevcon/assets/2860546/277c9bf8-694f-4239-aa44-cd21f2688eb3)
  ![image](https://github.com/shajumohamed/spfxdevcon/assets/2860546/e23538ef-8908-4815-a7f4-392076d59a84)
  ![image](https://github.com/shajumohamed/spfxdevcon/assets/2860546/b2895880-f8bb-4e10-a2a7-d880946ba575)

## Customizations
* The project uses a Dockerfile instead of a pre-built image. The node image and SharePoint Framework versions can be updated by setting the version numbers in the `devcontainer.json` file.

## Credits 

* https://github.com/pnp/docker-spfx/
* https://github.com/pnp/sp-dev-fx-webparts/

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
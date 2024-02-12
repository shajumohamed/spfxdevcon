# SharePoint Framework Dev Container Template for new Projects

A starter customizable template to quickly develop SPFx solutions. 

## Steps to execute
* Clone the repo into a dev container

   [![Open in Remote - Containers](https://img.shields.io/static/v1?style=for-the-badge&label=Remote%20-%20Containers&message=Open&color=blue&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/shajumohamed/spfxdevcon)

* Open a terminal within VS Code and Initialize the project as required by running the below command

    ```
    yo @microsoft/sharepoint
    ```
    ![image](https://github.com/shajumohamed/spfxdevcon/assets/2860546/fb9b0106-5a7c-47ca-9dae-7aa3ef8f528e)

* Generate certificates

  ```
  bash .devcontainer/spfx-startup.sh
  ```
  ![image](https://github.com/shajumohamed/spfxdevcon/assets/2860546/2c435517-ab4b-47f1-a596-d78900eefa99)

  You will need to copy the certificate to the local machine and install it as instructed
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
* The project uses a Dockerfile instead of a pre-built image and allows the node image and SharePoint Framework versions to be updated as and when new versions are released by updating the version number in the Dockerfile.


## Credits 

* https://github.com/pnp/docker-spfx/
* https://github.com/pnp/sp-dev-fx-webparts/


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

  

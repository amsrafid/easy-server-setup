## Easy server setup
This is a single command VPS server setup script for development. It can setup development server with one script running into server.

## How to use

### First Step (optional):
create a new user with root functionality. In this case user `dev` has been created. If you don't like, you can skip this section.

```sh
ssh root@<Server IP address>
adduser dev
```
Then the system will ask for password and passing the password it should be rewritten.\
**_NB: Please, remember the password. This will be use as sudo password into entire server action._**

Then run the bellow commands to,
```sh
usermod -aG sudo dev
rsync --archive --chown=dev:dev /root/.ssh /home/dev
exit
```
After running `exit` command server connection will be broken down and then you can connect to the server with new user name.
### Second Step:
Clone the repository to your local directory/server by the given command.
```
git clone git@github.com:amsrafid/easy-server-setup.git
```

If you cloned the repository to local then the files into the repository will be sent to server by the given commands,

```sh
cd /path/to/the/cloned/project

rsync -av "${PWD}"/* dev@<Server IP address>:~
OR
scp -r "${PWD}"/* dev@<Server IP address>:~
```
### Final Step
Then login to the server with your new created account (if you've created following first step). Let, you've created as same as first step. Then run the bellow command to get into the server.
```sh
ssh dev@<Server IP address>

# OR with identity file
ssh -i <Identity_file>.pem dev@<Server IP address>
```
Then after getting entered into the server, run the bellow command to start the setup action and wait for 20mins.
```sh
./setup.sh
```
**_N.B.:_**
- **This script is tested working for Ubuntu server only.**
- **If any package is not required for your setup, remove the package file name that is included into the `setup.sh` file.**
- **To change default settings, check `/packages` folder and change the value of necessary variables.**
- **In case of setting up of `phpMyAdmin` some required pop up will be shown. Try to follow the bellow images where red marked selections should be selected.**

#### Pop Up 1:
![Pop Up 1](./assets/Pop%20up%201.png)

#### Pop Up 2:
![Pop Up 2](./assets/Pop%20up%202.png)

#### Pop Up 3:
![Pop Up 3](./assets/Pop%20up%203.png)

#### Pop Up 4:
![Pop Up 4](./assets/Pop%20up%204.png)

#### Pop Up 5:
![Pop Up 5](./assets/Pop%20up%205.png)

### At last
This project was developed for personal use only. So, it couldn't fullfil all of your expectations or requirements. \
So, feel free to change as requirements and yes you can make a contribution with it.

## Authors

_Initial development_ - **_A. M. Sadman Rafid_**

## Security Vulnerabilities

If you discover a security vulnerability within Easy server setup, please send an e-mail to _A. M. Sadman Rafid_ via [amsrafid@gmail.com](mailto:amsrafid@gmail.com). All security vulnerabilities will be promptly addressed.

## License

The Easy server setup is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

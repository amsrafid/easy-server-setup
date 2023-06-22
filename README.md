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
## Authors

_Initial development_ - **_A. M. Sadman Rafid_**

## Security Vulnerabilities

If you discover a security vulnerability within Easy server setup, please send an e-mail to _A. M. Sadman Rafid_ via [amsrafid@gmail.com](mailto:amsrafid@gmail.com). All security vulnerabilities will be promptly addressed.

## License

The Easy server setup is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

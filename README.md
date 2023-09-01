# password-manager
Welcome to my self-contained, linux command-line password manager. \
\
The C++ program generates a random password that is 10 characters long and guaranteed to have a number, a symbol and an upper and lower case character. \
The bash scripts automate inserting and retreiving the password from the storage file. \
The aliases wrap the bash scripts so you can call them from anywhere in the command line without needing to type out the path. \
\
*Note:* the `.bash_aliases` file needs to be in the home directory to work. Ubuntu normally has the file there by default.
## To Use
1. Import the repository into your home directory
2. Copy the contents of the `.bash_aliases` file into the one in your home directory
3. Restart the command line
## Commands
* `newpasswd [identifier]` : generates a new password, prints it out, then saves it, along with the identifier, in the storage file
* `newpasswd [identifier] [password]` : saves the identifier and password in the storage file
* `getpasswd` : cats out the entire storage file
* `getpasswd [identifier]` : greps the storage file for the given identifier
* `editpasswds` : opens an editor for the storage file


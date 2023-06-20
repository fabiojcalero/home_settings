This file contains the settings that I need to set up on a fresh install of git.
The settings file was created on June 20, 2023 @ 5:26am.
Last updated on the same date.
The current git version is 2.34.1

1. Configure Name and Email

- git config --global user.name "Fabio Calero"
- git config --global user.email "fabiojcalero@gmail.com"

2. Create a new ssh key and add it to the ssh agent of the machine

- ssh-keygen -t ed25519 -C "fabiojcalero@gmail.com"
- Enter a file in which to save the key(/home/USER/.ssh/ALGORITHM: [Press enter]
- Enter passphrase (empty for no passphrase): [Type a passphrase]
- Enter same passphrase again: [Type passphrase again]
- Start the ssh-agent in the background using the next command.
- eval "$(ssh-agent -s)"
- Add the private ssh key to the ssh-agent using the next command.
- ssh-add ~/.ssh/id_ed25519

3. Add the SSH public key to the github account.

- cat ~/.ssh/id_ed25519.pub
- copy the contents of the key into github and give the key a descriptive name.



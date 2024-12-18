# Git SSH
**A script tool to quickly set up SSH for GitHub on Unix/Linux**  
*Current version: v2.0.1*  

### How to use:

- **Generate a new SSH key:** connect to internet and execute the below command in terminal
```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/chenh19/git_ssh/main/gitssh.sh)"
```
> If you are a Mac user, you may need to [install git package first](https://git-scm.com/downloads/mac).  
> For more information: [Generating a new SSH key and adding it to the ssh-agent](https://docs.github.com/en/enterprise-cloud@latest/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).  

- **Add the SSH key to your GitHub account**:
  
  - Click your profile photo and go to "**Settings**":
  <p align="center">
    <img src="https://raw.githubusercontent.com/chenh19/git_ssh/refs/heads/main/images/1-1.png" width=80%>
  </p>
  
  - Go to "**SSH and GPG keys**" and click "**New SSH key**":
  <p align="center">
    <img src="https://raw.githubusercontent.com/chenh19/git_ssh/refs/heads/main/images/1-2.png" width=80%>
  </p>
  
  - Enter the "**Title**", paste in the "**Key**", and click "**Add SSH key**":
  <p align="center">
    <img src="https://raw.githubusercontent.com/chenh19/git_ssh/refs/heads/main/images/1-3.png" width=80%>
  </p>
  
  > For more information: [Adding a new SSH key to your GitHub account](https://docs.github.com/en/enterprise-cloud@latest/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).

- **Remove the SSH key:** execute the below command in terminal
```
rm -rf ~/.ssh/id_ed25519*
```

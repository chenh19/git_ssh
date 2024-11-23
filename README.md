# Git SSH
**A script tool to quickly set up SSH for GitHub on Unix/Linux**  
*Current version: v1.2.1*  

### How to use:

- **Generate a SSH key:** connect to internet and execute the below command in terminal
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/chenh19/git_ssh/main/gitssh.sh)"
```

- **Add the SSH key to the GitHub**:
  
  - Go to GitHub "**Settings**":
  <p align="center">
    <img src="https://raw.githubusercontent.com/chenh19/git_ssh/refs/heads/main/images/1-1.png" width=80%>
  </p>
  
  - Go to "**SSH and GPG keys**" and click "**New SSH Key**":
  <p align="center">
    <img src="https://raw.githubusercontent.com/chenh19/git_ssh/refs/heads/main/images/1-2.png" width=80%>
  </p>
  
  - Enter "**Title**", paste in the "**Key**", and click "**Add SSH Key**":
  <p align="center">
    <img src="https://raw.githubusercontent.com/chenh19/git_ssh/refs/heads/main/images/1-3.png" width=80%>
  </p>

- **Remove the SSH key:** execute the below command in terminal
```
rm -rf ~/.ssh/id_ed25519*
```

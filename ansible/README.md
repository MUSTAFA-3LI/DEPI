## Ansible 

![ansible](https://github.com/user-attachments/assets/e266c548-f6e0-4313-bd1d-acab5f916ca8)

This project sets up a development environment on three AWS virtual machines using Ansible. The setup includes installing essential packages, Docker, and deploying an app container.

## Project Structure

- `ansible.cfg`: Configuration file for Ansible.
- `hosts.ini`: Inventory file containing the AWS instances.
- `ansible.yaml`: Ansible playbook that defines the tasks to be executed on the AWS instances.
- `README.md`: Documentation of steps

## Prerequisites

Before you can run the playbook, ensure you have (python, pipx, depandicies)

## Installation
[Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-and-upgrading-ansible-with-pipx)

1. **Ansible** installed on your control machine. You can install it using:
    ```bash
    sudo apt update
    pipx install --include-deps ansible
    pipx install ansible-core
    pipx install ansible-core==2.12.3
    ```

2. **Access to your AWS instances** via SSH. Make sure you have the `labsuser.pem` key file and it's properly configured.
3. 
   ```bash
   cd Downloads/
   sudo chmod 400 ./labsuser.pem
   ssh -i ./labsuser.pem "the name of AWS virtual machine"
   ```

to run the playbook run the command:
```bash
ansible-playbook -i hosts.ini ansible.yaml
```
![img_13](https://github.com/user-attachments/assets/40d6b0e0-ad21-4c30-9aa6-c322b1010ad5)

then we can open our application from the DNS of AWS machines with port `8000`

![img_15](https://github.com/user-attachments/assets/ff3f4fec-d265-4a62-b971-6d5a4b4320fa)

# Terraform AWS Configuration

This Terraform configuration sets up an AWS environment with a security group and EC2 instances.

## Key Components

- **AWS Security Group**: Allows SSH (port 22) and HTTP (port 80) inbound traffic from anywhere.
- **EC2 Instances**: Launches 3 `t3.medium` instances with Ubuntu 24.04 LTS.

```bash
cd terraform
terraform init
terraform plan
terraform apply
```
![img_14](https://github.com/user-attachments/assets/6d390fb5-985b-4c91-ad3d-f0621a0b7620)

After finishing from AWS machines
```bash
terraform destory
```

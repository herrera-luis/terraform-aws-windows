## Terraform AWS Windows

This project is an example of Infrastructure As Code using Terraform with AWS cloud provider.

---
## Setup Environment

Create a SSH key:

    ssh-keygen

Set the path to the key generated in terraform.tfvars:

    public_key_path = "/put/your/path/here/key.pub"

After generate your key you need to convert it from openssh to rsa for future RDP connection to your EC2 instance, use the next command for do the convertion:

    ssh-keygen -p -m PEM -f /put/your/path/here/private_key


## How to run

Initialize the environment:

    terraform init

Validate the code:

    terraform validate

Plan the changes:

    terraform plan

Apply changes:

    terraform apply -auto-approve

Destroy environment:

    terraform destroy -auto-approve
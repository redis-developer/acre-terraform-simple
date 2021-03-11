# acre-terraform

Use the latest "azurerm" Terraform provider to deploy
Azure Cache for Redis Enterprise (ACRE)

- _Tenant_
  - _Subscription_
    - _Service Principal_
    - **Resource Group**
      - **Redis Enterprise Cluster**

There are zero modules configured, and the endpoint is publicly accessible.

## Prerequisites

### Secrets

1. Tenant ID
2. Subscription ID
3. Service Principal
   1. Client ID
   2. Client Secret
    
### Tools

1. Tested with Terraform CLI 0.14.8

## Getting started

```bash
  git clone https://github.com/redisgeek/acre-terraform-simple
  cd acre-terraform-simple
  terraform init
```
The output should include:
```text
  Terraform has been successfully initialized!
```
Copy the variables template.
```bash
cp terraform.tfvars.example terraform.tfvars
```
Update terraform.tfvars with your [secrets](#secrets)
```bash
terraform plan
terraform apply
```

## Cleanup

Remove the resources that were created.

```bash
terraform destroy
```

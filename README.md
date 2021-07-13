[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

# ACRE-TERRAFORM-SIMPLE

This is a template to get started with the 'azurerm_redis_enterprise_cluster' resource available in the 'azurerm' provider with Terraform.

- _Tenant_
    - _Subscription_
        - **Resource Group**
            - **Redis Enterprise Cluster**

There are zero Redis Modules configured, and the endpoint is publicly accessible.

## | [Getting Started](#getting-started) | [About](#about the project) | [License](#license) |

## Getting Started

### Prerequisites

1.  [Terraform](https://terraform.io]) [CLI](https://terraform.io/downloads.html)
2.  [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)

### Step 1. Getting Started

Login to Azure using the Azure CLI

```bash
az login
```
>Login with a Service Principal will also work


### Step 2: Clone the repository

```bash
git clone https://github.com/redis-developer/acre-terraform-simple
```


### Step 3: Initialize the repository

```bash
cd acre-terraform-simple
terraform init
```
>The output should include: ```Terraform has been successfully initialized```


### Step 4: Optionally, modify the variables

This default variables are setup to deploy the smallest 'E10' instance into the 'East US' region.
Changes can be made by updating the ```variables.tf``` file.


### Step 5: Verify the plan

The 'plan' output will show you everything being created by the template.

```bash
terraform plan
```
>The plan step does not make any changes in Azure

### Step 6: Apply the plan

When the plan looks good, 'apply' the template.

```bash
terraform apply
```

### Step 7: Connect using generated output

The access key is sensitive, so viewing the outputs must be requested specifically.
The output is also in JSON format.

```bash
terraform output redisgeek_config
```
> Example output:
```
{
"hostname" = "redisgeek-8jy4.eastus.redisenterprise.cache.azure.net"
"access_key" = "DQYABC3uRMyDguE1236Xkvv3TprUcqBWTRkfgOPjs82Y="
"port" = "10000"
}
```

## About The Project

The cluster, deployed across 3-AZs, will have a 99.99 SLA that is financially backed by Azure.
There are no "preview" features or modules included in this template.

### Built With

* [Terraform](https://terraform.io)

### Contributing

Pull-requests are welcomed!

## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/redisgeek/acre-terraform-simple.svg?style=for-the-badge
[contributors-url]: https://github.com/redisgeek/acre-terraform-simple/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/redisgeek/acre-terraform-simple.svg?style=for-the-badge
[forks-url]: https://github.com/redisgeek/acre-terraform-simple/network/members
[stars-shield]: https://img.shields.io/github/stars/redisgeek/acre-terraform-simple.svg?style=for-the-badge
[stars-url]: https://github.com/redisgeek/acre-terraform-simple/stargazers
[issues-shield]: https://img.shields.io/github/issues/redisgeek/acre-terraform-simple.svg?style=for-the-badge
[issues-url]: https://github.com/redisgeek/acre-terraform-simple/issues
[license-shield]: https://img.shields.io/github/license/redisgeek/acre-terraform-simple.svg?style=for-the-badge
[license-url]: https://github.com/redisgeek/acre-terraform-simple/blob/master/LICENSE.txt
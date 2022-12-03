# terraform-azurerm-kusto

[![Build Status](https://github.com/JamesWoolfenden/terraform-azurerm-kusto/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-azurerm-kusto)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-azurerm-kusto.svg)](https://github.com/JamesWoolfenden/terraform-azurerm-kusto/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-azurerm-kusto.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-azurerm-kusto/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-azurerm-kusto/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-kusto&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-azurerm-kusto/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-kusto&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module to provision a secure terraform state bucket for team use of IAC.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing terraform code:

```hcl
module "kusto" {
source      = "JamesWoolfenden/kusto/azurerm"
version     = "v0.0.1"
common_tags = var.common_tags
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kusto_cluster.pike](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kusto_cluster) | resource |
| [azurerm_kusto_cluster_customer_managed_key.pike](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kusto_cluster_customer_managed_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key"></a> [key](#input\_key) | n/a | <pre>object({<br>    key_vault_id = string<br>    key_name     = string<br>    key_version  = number<br>  })</pre> | n/a | yes |
| <a name="input_kusto"></a> [kusto](#input\_kusto) | n/a | <pre>object({<br>    name         = string<br>    location     = string<br>    rg_name      = string<br>    sku          = string<br>    sku_capacity = number<br>  })</pre> | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(any)` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Role and Permissions

<!-- BEGINNING OF PRE-COMMIT-PIKE DOCS HOOK -->
The Terraform resource required is:

```golang
resource "google_project_iam_custom_role" "terraformXVlBzgba" {
  project     = "examplea"
  role_id     = "terraform_pike"
  title       = "terraformXVlBzgba"
  description = "A user with least privileges"
  permissions = [
    "compute.disks.create",
    "compute.globalOperations.get",
    "compute.instances.create",
    "compute.instances.delete",
    "compute.instances.get",
    "compute.instances.setMetadata",
    "compute.instances.setTags",
    "compute.projects.get",
    "compute.projects.setCommonInstanceMetadata",
    "compute.subnetworks.use",
    "compute.subnetworks.useExternalIp",
    "compute.zones.get",
    "iam.serviceAccounts.actAs"
  ]
}

```
<!-- END OF PRE-COMMIT-PIKE DOCS HOOK -->
## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-azurerm-kusto/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-azurerm-kusto/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2022 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage] |

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150

# Microsoft Defender for Cloud
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-blue.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![OpenTofu Registry](https://img.shields.io/badge/opentofu-registry-yellow.svg)](https://search.opentofu.org/module/claranet/defender-for-cloud/azurerm/)

Azure module to deploy a [Microsoft Defender for Cloud](https://azure.microsoft.com/en-us/products/defender-for-cloud).

⚠️ NOTE:

Owner access permission is required.

<!-- BEGIN_TF_DOCS -->
## Global versioning rule for Claranet Azure modules

| Module version | Terraform version | OpenTofu version | AzureRM version |
| -------------- | ----------------- | ---------------- | --------------- |
| >= 8.x.x       | **Unverified**    | 1.8.x            | >= 4.0          |
| >= 7.x.x       | 1.3.x             |                  | >= 3.0          |
| >= 6.x.x       | 1.x               |                  | >= 3.0          |
| >= 5.x.x       | 0.15.x            |                  | >= 2.0          |
| >= 4.x.x       | 0.13.x / 0.14.x   |                  | >= 2.0          |
| >= 3.x.x       | 0.12.x            |                  | >= 2.0          |
| >= 2.x.x       | 0.12.x            |                  | < 2.0           |
| <  2.x.x       | 0.11.x            |                  | < 2.0           |

## Contributing

If you want to contribute to this repository, feel free to use our [pre-commit](https://pre-commit.com/) git hook configuration
which will help you automatically update and format some files for you by enforcing our Terraform code module best-practices.

More details are available in the [CONTRIBUTING.md](./CONTRIBUTING.md#pull-request-process) file.

## Usage

This module is optimized to work with the [Claranet terraform-wrapper](https://github.com/claranet/terraform-wrapper) tool
which set some terraform variables in the environment needed by this module.
More details about variables set by the `terraform-wrapper` available in the [documentation](https://github.com/claranet/terraform-wrapper#environment).

⚠️ Since modules version v8.0.0, we do not maintain/check anymore the compatibility with
[Hashicorp Terraform](https://github.com/hashicorp/terraform/). Instead, we recommend to use [OpenTofu](https://github.com/opentofu/opentofu/).

```hcl
module "defender_for_cloud" {
  source  = "claranet/defender-for-cloud/azurerm"
  version = "x.x.x"
}
```

## Providers

| Name | Version |
|------|---------|
| azapi | ~> 2.3 |
| azurerm | ~> 4.31 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azapi_resource.container_pricing](https://registry.terraform.io/providers/azure/azapi/latest/docs/resources/resource) | resource |
| [azurerm_security_center_contact.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_contact) | resource |
| [azurerm_security_center_subscription_pricing.cloud_posture](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_subscription_pricing) | resource |
| [azurerm_security_center_subscription_pricing.cosmosdbs](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_subscription_pricing) | resource |
| [azurerm_security_center_subscription_pricing.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_subscription_pricing) | resource |
| [azurerm_security_center_subscription_pricing.opensourcerelationaldatabases](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_subscription_pricing) | resource |
| [azurerm_security_center_subscription_pricing.sqlservers](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_subscription_pricing) | resource |
| [azurerm_security_center_subscription_pricing.sqlservers_vms](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_subscription_pricing) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| alert\_notifications\_enabled | Whether to send security alerts notifications to the security contact or not. | `bool` | `true` | no |
| alerts\_to\_admins\_enabled | Whether to send security alerts notifications to Subscription admins (Owners) or not. | `bool` | `true` | no |
| contact | The name, email and phone number to contact for security alerts. | <pre>object({<br/>    name  = optional(string)<br/>    email = optional(string)<br/>    phone = optional(string)<br/>  })</pre> | `{}` | no |
| enable\_agentless\_discovery\_for\_kubernetes | Enable agentless discovery for Kubernetes extension in Defender for Cloud. | `bool` | `true` | no |
| enable\_agentless\_vm\_scanning | Enable agentless VM scanning extension in Defender for Cloud. | `bool` | `true` | no |
| enable\_container\_integrity\_contribution | Enable container integrity contribution extension in Defender for Cloud. | `bool` | `true` | no |
| enable\_container\_pricing | Enable container pricing in Defender for Cloud. | `bool` | `true` | no |
| enable\_container\_registries\_vulnerability\_assessments | Enable container registries vulnerability assessments extension in Defender for Cloud. | `bool` | `true` | no |
| enable\_container\_sensor | Enable container sensor extension in Defender for Cloud. | `bool` | `true` | no |
| enable\_cosmosdbs\_pricing | Enable Cosmos DBs pricing in Defender for Cloud. | `bool` | `true` | no |
| enable\_opensourcerelationaldatabases\_pricing | Enable open source relational databases pricing in Defender for Cloud. | `bool` | `true` | no |
| enable\_sqlservers\_pricing | Enable SQL servers pricing in Defender for Cloud. | `bool` | `true` | no |
| enable\_sqlservers\_vms\_pricing | Enable SQL servers VMs pricing in Defender for Cloud. | `bool` | `true` | no |
| exclusion\_tags | List of VM tags to exclude from Agentless scanning Defender for Cloud. | <pre>list(object({<br/>    key   = string<br/>    value = string<br/>  }))</pre> | `[]` | no |
| services | Defender for Cloud services list to activate. See [https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_subscription_pricing](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_subscription_pricing). | <pre>list(object({<br/>    resource_type = string<br/>    tier          = optional(string, "Standard")<br/>    subplan       = optional(string, null)<br/>  }))</pre> | <pre>[<br/>  {<br/>    "resource_type": "AppServices"<br/>  },<br/>  {<br/>    "resource_type": "Arm",<br/>    "subplan": "PerSubscription"<br/>  },<br/>  {<br/>    "resource_type": "KeyVaults",<br/>    "subplan": "PerKeyVault"<br/>  },<br/>  {<br/>    "resource_type": "StorageAccounts",<br/>    "subplan": "DefenderForStorageV2"<br/>  },<br/>  {<br/>    "resource_type": "VirtualMachines",<br/>    "subplan": "P1"<br/>  }<br/>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| alert\_contact\_id | The alert contact object ID. |
| resource\_alert\_contact | The alert contact object. |
| resource\_subscribed\_plans | List of subscribed plans and services. |
<!-- END_TF_DOCS -->

## Related documentation

Microsoft Azure documentation: xxxx

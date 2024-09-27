# Microsoft Defender for Cloud
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-blue.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![OpenTofu Registry](https://img.shields.io/badge/opentofu-registry-yellow.svg)](https://search.opentofu.org/module/claranet/defender-for-cloud/azurerm/)

Azure module to deploy a [Microsoft Defender for Cloud](https://azure.microsoft.com/en-us/products/defender-for-cloud).

<!-- BEGIN_TF_DOCS -->
## Global versioning rule for Claranet Azure modules

| Module version | Terraform version | AzureRM version |
| -------------- | ----------------- | --------------- |
| >= 7.x.x       | 1.3.x             | >= 3.0          |
| >= 6.x.x       | 1.x               | >= 3.0          |
| >= 5.x.x       | 0.15.x            | >= 2.0          |
| >= 4.x.x       | 0.13.x / 0.14.x   | >= 2.0          |
| >= 3.x.x       | 0.12.x            | >= 2.0          |
| >= 2.x.x       | 0.12.x            | < 2.0           |
| <  2.x.x       | 0.11.x            | < 2.0           |

## Contributing

If you want to contribute to this repository, feel free to use our [pre-commit](https://pre-commit.com/) git hook configuration
which will help you automatically update and format some files for you by enforcing our Terraform code module best-practices.

More details are available in the [CONTRIBUTING.md](./CONTRIBUTING.md#pull-request-process) file.

## Usage

This module is optimized to work with the [Claranet terraform-wrapper](https://github.com/claranet/terraform-wrapper) tool
which set some terraform variables in the environment needed by this module.
More details about variables set by the `terraform-wrapper` available in the [documentation](https://github.com/claranet/terraform-wrapper#environment).

```hcl
module "defender_for_cloud" {
  source  = "claranet/defender-for-cloud/azurerm"
  version = "x.x.x"
}
```

## Providers

| Name | Version |
|------|---------|
| azurerm | ~> 3.75 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_security_center_contact.alert_contact](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_contact) | resource |
| [azurerm_security_center_subscription_pricing.mdc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_subscription_pricing) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| alert\_notifications\_enabled | Whether to send security alerts notifications to the security contact or not. | `bool` | `true` | no |
| alerts\_to\_admins\_enabled | Whether to send security alerts notifications to Subscription admins (Owners) or not. | `bool` | `true` | no |
| contact\_email | The email to contact for security alerts. | `string` | `null` | no |
| contact\_phone | The phone number to contact for security alerts. | `string` | `null` | no |
| services | Defender for Cloud services list to activate. See [https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_subscription_pricing](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_subscription_pricing) | <pre>list(object({<br>    resource_type = string<br>    tier          = optional(string, "Standard")<br>    subplan       = optional(string, null)<br>  }))</pre> | <pre>[<br>  {<br>    "resource_type": "AppServices"<br>  },<br>  {<br>    "resource_type": "Arm",<br>    "subplan": "PerSubscription"<br>  },<br>  {<br>    "resource_type": "CloudPosture"<br>  },<br>  {<br>    "resource_type": "ContainerRegistry"<br>  },<br>  {<br>    "resource_type": "Containers"<br>  },<br>  {<br>    "resource_type": "CosmosDbs"<br>  },<br>  {<br>    "resource_type": "Dns"<br>  },<br>  {<br>    "resource_type": "KeyVaults",<br>    "subplan": "PerKeyVault"<br>  },<br>  {<br>    "resource_type": "KubernetesService"<br>  },<br>  {<br>    "resource_type": "OpenSourceRelationalDatabases"<br>  },<br>  {<br>    "resource_type": "SqlServerVirtualMachines"<br>  },<br>  {<br>    "resource_type": "SqlServers"<br>  },<br>  {<br>    "resource_type": "StorageAccounts",<br>    "subplan": "DefenderForStorageV2"<br>  },<br>  {<br>    "resource_type": "VirtualMachines",<br>    "subplan": "P1"<br>  }<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| contact\_id | The alert contact object ID. |
| subscribed\_plans | List of subscribed plans and services. |
<!-- END_TF_DOCS -->

## Related documentation

Microsoft Azure documentation: xxxx

# Azure <> Terraform module
Terraform module for creation Azure <>

## Usage

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0.0 |
| <a name="requirement_azapi"></a> [azapi](#requirement\_azapi) | >=1.12.1 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4.0.1 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.9.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azapi"></a> [azapi](#provider\_azapi) | >=1.12.1 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 4.0.1 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.9.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azapi_resource_action.this](https://registry.terraform.io/providers/Azure/azapi/latest/docs/resources/resource_action) | resource |
| [azurerm_purview_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/purview_account) | resource |
| [time_sleep.this](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admins_object_ids"></a> [admins\_object\_ids](#input\_admins\_object\_ids) | Set of object IDs designated as Admins for Purview Accounts | `set(string)` | `[]` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure location | `string` | n/a | yes |
| <a name="input_managed_resource_group_name"></a> [managed\_resource\_group\_name](#input\_managed\_resource\_group\_name) | Purview Managed resource group name | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Given name to purview | `string` | n/a | yes |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | The name of the resource group in which to create the Microsoft SQL Server | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Resource tags | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of Purview Account |
| <a name="output_principal_id"></a> [principal\_id](#output\_principal\_id) | The Principal ID of Purview Account |
<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](./LICENSE)

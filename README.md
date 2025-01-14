# Azure Key Vault Terraform module

Terraform module to manage an Azure Key Vault.
<!-- BEGIN_TF_DOCS -->
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
| [azurerm_key_vault.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault) | resource |
| [azurerm_role_assignment.keyvault_admin](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.keyvault_reader](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.keyvault_user_admin](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | The location to be used for the key vault | `string` | n/a | yes |
| <a name="input_management_principals"></a> [management\_principals](#input\_management\_principals) | The managers of the key vault | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the key vault | `string` | n/a | yes |
| <a name="input_reader_principals"></a> [reader\_principals](#input\_reader\_principals) | The provisioners of the key vault | `map(string)` | `{}` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The resource group to be used for the key vault | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be used on resources. | `map(string)` | `{}` | no |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | The tenant id to be used for the key vault | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_vault_id"></a> [key\_vault\_id](#output\_key\_vault\_id) | The ID of the key vault |
| <a name="output_name"></a> [name](#output\_name) | The name of the key vault |
<!-- END_TF_DOCS -->
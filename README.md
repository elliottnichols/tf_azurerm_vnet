
### Status
[![Build Status](https://travis-ci.org/elliottnichols/tf_azurerm_vnet.svg?branch=master)](https://travis-ci.org/elliottnichols/tf_azurerm_vnet)

# tf_azurerm_vnet
Terraform Module for managing an Azure Virtual Network resource

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK --> 
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| address\_space | (Required) List of IP CIDR addresses, in network/mask_bits - CIDR notation, assigned to the virtual network. Changing this may force a new resource to be created. | list | `[ "10.0.0.0/16" ]` | no |
| common\_tags | (Optional) A mapping of more tags to assign to the vnet resources. | map | `{}` | no |
| dns\_servers | (Optional) List of IP addresses of DNS servers | list | `[]` | no |
| location | (Required) The location/region where the virtual network is created. Changing this forces a new resource to be created. | string | n/a | yes |
| rg | (Required) The name of the resource group in which to create the virtual network. | string | `"rg-shared-network"` | no |
| subnet\_address\_ranges | List of IP address ranges corresponding to subnet_names. Names and address ranges | list | `[ "10.0.0.0/22" ]` | no |
| subnet\_names | List of subnet names. | list | `[ "subnet1" ]` | no |
| tags | (Optional) A mapping of tags to assign to the vnet resources. | map | `{}` | no |
| vnet\_name | (Required) The name of the virtual network. Changing this forces a new resource to be created. | string | `"vnet1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| subnet\_ids |  |
| subnet\_ips |  |
| vnet\_address\_space |  |
| vnet\_dns\_servers |  |
| vnet\_id |  |
| vnet\_location |  |
| vnet\_name |  |
| vnet\_rg |  |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
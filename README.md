[![Deploy to Oracle Cloud](https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg)](https://cloud.oracle.com/resourcemanager/stacks/create?zipUrl=https://github.com/avaloqcloud/terraform-oci-container-registry/archive/refs/tags/v0.1.0.zip)

# Terraform terraform-oci-container-registry  module

Terraform module to create Container Registry on Oracle Cloud Infrastructure.

## Usage

```hcl
module "terraform-oci-container-registry" {
  source = "https://github.com/avaloqcloud/terraform-oci-container-registry?ref=v0.1.0"

  compartment_id = "ocid1.compartment.oc1..xxx"
  display_name   = "namespace/container-name"
  is_public      = false
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.2.8 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | ~> 5.18.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | ~> 5.18.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_artifacts_container_repository.this](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/artifacts_container_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_ocid"></a> [compartment\_ocid](#input\_compartment\_ocid) | The OCID of the compartment. | `string` | n/a | yes |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | Container registry name. Format: <namespace>/<container\_name> | `string` | `null` | no |
| <a name="input_is_public"></a> [is\_public](#input\_is\_public) | Enable public access to the Container Registry | `boolean` | `false` | no |

## Outputs

No outputs.

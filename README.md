[![Deploy to Oracle Cloud](https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg)](https://cloud.oracle.com/resourcemanager/stacks/create?zipUrl=https://github.com/avaloqcloud/terraform-oci-container-registry/archive/refs/tags/v0.0.0.zip)

[![Generate terraform docs](https://github.com/avaloqcloud/terraform-oci-container-registry/actions/workflows/documentation.yml/badge.svg)](https://github.com/avaloqcloud/terraform-oci-container-registry/actions/workflows/documentation.yml)

# Terraform terraform-oci-container-registry  module

Terraform module to create Container Registry on Oracle Cloud Infrastructure.

## Usage

```hcl
module "terraform-oci-container-registry" {
  source = "https://github.com/avaloqcloud/terraform-oci-container-registry?ref=v0.0.0"

  compartment_id = "ocid1.compartment.oc1..xxx"
  display_name   = "example-bucket"
  is_public      = false
```


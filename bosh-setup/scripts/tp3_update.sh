#!/usr/bin/env

sed -r -i 's|438ac0678d2f7a266ae2a30a8f53e8f30bf12f7d|69bf1c5275f7ae6cfc5dab438038a2afa9e8c02a|' bosh.yml
sed -r -i "s|https://cloudfoundry.blob.core.windows.net/azurestack/bosh-azure-cpi-13-azurestack.1.tgz|https://cloudfoundry.blob.core.windows.net/azurestack/bosh-azure-cpi-13-azurestack.2.tgz|" bosh.yml
sed -r -i "s|azure_stack_authentication: AzureAAD|azure_stack_authentication: AzureAAD \nazure_stack_endpoint_prefix: management|" bosh.yml
sed -r -i "s|dns: \[192.168.200.3, [\.0-9]*\]|dns: [168.63.129.16]|" bosh.yml
sed -r -i "s|30000-600000|30000-6000000|" example_manifests/single-vm-cf.yml
sed -r -i "s|5000-600000|5000-6000000|" example_manifests/single-vm-cf.yml
sed -r -i "44s|instance_type: Standard_A2|instance_type: Standard_A4|" example_manifests/single-vm-cf.yml
sed -r -i "s|default_password=\"c1oudc0w\"|default_password=\"c1oudc0w\" \npassword=\"c1oudc0w\"\n|" deploy_cloudfoundry.sh
sed -r -i "s|while true; do|while false; do|" deploy_cloudfoundry.sh

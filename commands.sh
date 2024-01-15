# make sure terraform CLI is installed
terraform

# initialize terraform Azure modules
terraform init

# plan and save the infra changes into tfplan file
terraform plan -out tfplan

# show the tfplan file
terraform show -json tfplan
terraform plan -out=tfplan -var="azure_subscription_id=7fa11816-8598-41e0-b0fe-bb6e5e1e2737" -var="azure_client_id=7fa11816-8598-41e0-b0fe-bb6e5e1e2737" -var="azure_client_secret=etudiantmpi1" -var="azure_tenant_id=dbd6664d-4eb9-46eb-99d8-5c43ba153c61"

# Format tfplan.json file
terraform show -json tfplan | jq '.' > tfplan.json

# show only the changes
cat tfplan.json | jq '[.resource_changes[] | {type: .type, name: .change.after.name, actions: .change.actions[]}]' 
cat tfplan.json | jq -r '(.resource_changes[] | [.change.actions[], .type, .change.after.name]) | @tsv'

# apply the infra changes

# delete the infra
terraform destroy

# cleanup files
rm terraform.tfstate
rm terraform.tfstate.backup
rm tfplan
rm tfplan.json
rm -r .terraform/
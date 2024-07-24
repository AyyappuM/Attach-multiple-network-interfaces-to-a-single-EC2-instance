# Attach-multiple-network-interfaces-to-a-single-EC2-instance
Attach multiple network interfaces to a single EC2 instance

Run the following commands:

```
cd terraform

terraform init

terraform plan -var="account_number=..." -var="availability_zone=ap-south-1a"

terraform apply --auto-approve -var="account_number=..." -var="availability_zone=ap-south-1a"

terraform destroy --auto-approve -var="account_number=..." -var="availability_zone=ap-south-1a"
```

After the resources are deployed, login to AWS console. Connect to the instance through 'EC2 Instance Connect'. Run the following commands inside the instance:

```
sudo apt install net-tools

ifconfig -a
```

Both enX0 and enX1 (it's the additional interface added) would be listed. If IPv4 address is not shown for enX1, reboot the instance.
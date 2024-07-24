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

![image](https://github.com/user-attachments/assets/b3ae1705-6c4b-4e4e-9bc6-6266674ac5e0)

The limit for number of network interfaces attached to instances vary based on the instance types. For example, a maximum of 2 ENIs can be attached to t2.micro.

![image](https://github.com/user-attachments/assets/196989b7-2ffa-4f85-bac1-c46d0d2574f6)

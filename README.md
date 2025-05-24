**Project:** Web App Infra on AWS with Terraform
**Goal:** Provision a basic, secure web server and database using Terraform.

In this project, we aimed to build a simple yet secure infrastructure on AWS using Terraform to create an environment where a web server connects to a backend database.

**Step 1:** Setting the Foundation – VPC and Subnets
We started by creating a Virtual Private Cloud (VPC), which acts like a private network inside AWS. Within this VPC, we created:

A public subnet to host a web server (EC2), so it can be accessed from the internet.

Two private subnets to host a database (RDS), keeping it isolated from public access for security.

**Step 2:** Networking – Internet Gateway and Routing
We attached an Internet Gateway to the VPC so that the EC2 instance in the public subnet could reach the internet.

Then we set up a Route Table to ensure traffic knows how to flow between the subnet and the internet.

**Step 3:** Launching EC2 – Our Web Server
We deployed an EC2 instance in the public subnet. To automate its setup, we used a userdata.sh script that:

Installs Apache

Starts the web server

Displays a simple message on a webpage

This EC2 instance is exposed to the internet only on port 80 (HTTP) using a security group.

**Step 4:** Launching RDS – Our MySQL Database
We launched an RDS MySQL database inside the private subnet. This database is not accessible from the internet.

It is secured by a security group that only allows access from the EC2 instance’s security group, ensuring safe internal communication.

**Step 5:** Outputs – Getting What We Need
We used Terraform outputs to display:

1. The Public IP of the EC2 instance, so we can open it in a browser.

2. The Endpoint of the RDS database, to be used in backend apps.

**Final Result**
After running terraform apply, we had Output:

1. A working web server accessible via a public IP

2. A private, secure database accessible only by the EC2 instance


# Azure Infrastructure Operations Project: Deploying a scalable IaaS web server in Azure

### Introduction
A simple Terraform/Packer Template that creates any number of Linux VM on an Azure Subcription via a predeployed packer image.

### Getting Started

Before you can use this templates successful, you need an Azure subscription and an access to the resources within the platform.
You also need to be comfortable working in a command prompt.

1. Clone this repository
2. Edit the template files 
3. Execute the commands as detailed in the instruction section.

### Dependencies
1. Install the [Azure command line interface](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
2. Install [Packer](https://www.packer.io/downloads)
3. Install [Terraform](https://www.terraform.io/downloads.html)

### Instructions
There 2 parts to the templates in these repository.

**Packer**
The Packer template files creates an image on your azure subscription using a preconfigured resource group.

Edit **variables.json**  template accordingly with the corresponding information which will enable packer to create an image on your azure subscription.

To create the image, run the following command:

1.  packer build -var-file variables.json server.json



**Terraform**
After you have cloned or downloaded this file, the **variables.tf** file contains 6 variables you need to supply.

You can add a default parameter to the file so you do not have to enter this all the time. 

	For example the **"location"** variable:
	
		variable "location" {
		description = "The Azure Region in which all resources should be created."
		**default = "East US"**
		}

To start the deployment, perform the following steps in a command prompt:

1. Run az login
2. Run terraform init
3. Run terraform plan
4. Confirm that the changes in the output are your desired/expected changes
5. Run terraform apply

### Output
A successful deployment will create the following resource in your subcription:

1. A resource group for the deployment
2. A load balancer
3. Any number of specified NIC
4. Any number of specified VM
5. An availability set
6. A virtual Network
7. A Network Security Group
8. A Public IP address


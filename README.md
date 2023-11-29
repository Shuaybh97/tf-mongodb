# tf-mongodb

Your task is to create a terraform module and use it to deploy a secure, well-architected and scalable MongoDB Atlas Database.

🤖 Requirements

MongoDB Atlas Terraform module

  
Project
i. Include Network access security to allow one or more public ip addresses
access.
    
ii. Capable of VPC peering with an AWS Account.
iii. Capable of integrating with Datadog or any other compatible monitoring tools
iv. Maintenance window control.

  
Database
i. As many customizable values in tf.vars as you think are useful.

  
User
i. Can access the above create database.

Create a CI/CD pipeline using GitHub Actions for deploying the above mentioned Terraform module, the entire infrastructure should be deployable with a single command using Terraform.

Hint: Your best friend is the Terraform Registry - all resource can be found there (https://registry.terraform.io/)

Deploy and example usage of your module. (Hint: use examples folder)

Minimum Terraform Module best practices required
Documentation
Example usage
Module Automated testing
pre-commits to pass
i. terraform_checkov
ii. terraform_docs
iii. terraform_fmt
iv. terraform_providers_lock
v. terraform_tflint
vi. terraform_tfsec
vii. terraform_validate

Document your solution, including the assumptions made, steps taken and any ongoing maintenance tasks.

Don't just show the result; show the steps you've taken to
implement your solution and commit often. Ask yourself, how would you manage database user password? What would be important to monitor and what alerts would
you create?… Document beyond the coding task.

Note:

VPC Peering and Datadog integration are not mandatory to be deployed or tested but the feature has to be included and considered in such a way that it should work.

You may include as many extra features and functionality you desire, from creating dummy data to CI/CD functionality.

Please create your own PRIVATE repo and once you have completed it, invite myself or @AbzOps to review your project and give feedback! (our GitHub IDs are moabukar & a-abukar)

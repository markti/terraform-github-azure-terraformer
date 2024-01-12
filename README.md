# Introduction to GitHub - Automate the Automation with Terraform (GH-ATAT)

Welcome to our custom Terraform module, designed to streamline your infrastructure management with a fully integrated end-to-end Terraform pipeline. This module leverages the GitHub provider, offering a seamless setup experience and powerful capabilities. 

## Key Features:

1. **Automated GitHub Repository Creation**: Upon module execution, a new GitHub repository is automatically created. This repository will host your Azure Terraform codebase, centralizing your infrastructure-as-code (IaC) assets.

2. **Simplified Azure Integration**: The module is crafted to work harmoniously with Azure. Just specify your Azure credentials, and the module takes care of the rest, ensuring smooth interaction with Azure services.

3. **Efficient State Management**: With a focus on reliable state management, our module requires you to provide a configuration for a Blob Storage backend. This ensures your Terraform state is stored securely and is easily accessible for your deployments.

4. **GitHub Actions Integration**: A highlight of this module is the integration of GitHub Actions. We've set up a CI/CD pipeline, complete with a manual trigger feature. This allows you to effortlessly choose an environment and execute `terraform plan`, `apply`, and `destroy` operations, ensuring full control over your deployment lifecycle.

## Prerequisites:

Before you begin, ensure you have the following:

- **GitHub Personal Access Token**: This is crucial for authenticating and enabling interactions with your GitHub account. 
- **Azure Credentials**: These are necessary for Azure resources management.
- **Blob Storage Backend Configuration**: Required for storing your Terraform state.

## Getting Started:

Using this module is a breeze. Follow these simple steps:

1. **Provide Necessary Credentials**: Input your GitHub Personal Access Token, Azure credentials, and Blob Storage Backend configuration into the module.

2. **Run `terraform apply`**: With your credentials in place, simply run `terraform apply`. This initiates the automated process of setting up your GitHub repository and configuring the Azure Terraform codebase and the GitHub Actions pipeline.

3. **Trigger Your Pipeline**: Once set up, use the manual trigger in the GitHub Actions to select an environment and manage your deployments with `plan`, `apply`, and `destroy` commands.

4. **Enjoy Simplified Infrastructure Management**: With everything in place, you're now set to manage your infrastructure with ease, all from a single, integrated pipeline.

Thank you for choosing our Terraform module. We're excited to be a part of your infrastructure automation journey!
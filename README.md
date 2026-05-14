# 🏥 Azure AI Health Bot: Automated Cloud Infrastructure

![Deploy Status](https://github.com/labdulrazak-git/Healthcare-Chatbot-with-Azure-Health-Bot/actions/workflows/deploy.yml/badge.svg)

## 📋 Project Overview
This repository contains a fully automated, production-ready deployment of the **Azure Health Bot Service** (Healthcare Agent Service). The project demonstrates a "Zero-Touch" infrastructure approach, where the entire environment—including the Resource Group and the Bot service—is provisioned via code.

### 🏗️ Architecture
- **Infrastructure as Code (IaC):** Modular Bicep templates.
- **CI/CD:** GitHub Actions with Subscription-level deployment scope.
- **Security:** Managed via Entra ID (RBAC) and GitHub Secrets (OIDC/Service Principal).
- **Runtime:** Azure AI Health Bot (F0 Tier).



## 🚀 Key Features
*   **Subscription-Level Automation:** Automatically creates the Resource Group and resources in a single pass.
*   **Idempotent Design:** Re-running the pipeline ensures the environment matches the desired state without duplicating resources.
*   **Security First:** Implements the Principle of Least Privilege (PoLP) using GitHub Secrets to store Azure credentials.

## 🛠️ Tech Stack
*   **Azure CLI:** Resource management and verification.
*   **Bicep:** Declarative infrastructure definitions.
*   **GitHub Actions:** Continuous Deployment (CD) pipeline.
*   **Markdown:** Documentation and architectural notes.

## 🏁 Getting Started

### Prerequisites
1. An active **Azure Subscription**.
2. **GitHub Repository Secrets** configured:
   - `AZURE_CREDENTIALS`: The JSON block from your Service Principal.

### Deployment
Simply push a change to the `main` branch to trigger the automated deployment:
```bash
git add .
git commit -m "deploy: update infrastructure"
git push origin main
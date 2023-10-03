# Python Postgres Azure Flask Application

This repository contains solutions to two distinct tasks:

1. A Python Flask API deploying to Production Environment
2. Secure Database Access from the API
   
# Table of Content

- [Python Postgres Azure Flask Application](#python-postgres-azure-flask-application)
- [Table of Content](#table-of-content)
- [Python Flask API](#python-flask-api)
  - [Premise](#premise)
  - [Prerequisite and Tools Used](#prerequisite-and-tools-used)
    - [Development](#development)
    - [DevSecOps Toolings](#devsecops-toolings)
  - [Running the API Service and DB locally](#running-the-api-service-and-db-locally)
  - [Infrastructure as Code](#infrastructure-as-code)
- [Theoretical Case: Secure Database Access](#theoretical-case-secure-database-access)
- [Assumptions](#assumptions)
- [ToDo](#todo)

# Python Flask API
## Premise

In this section, we will cover a practical solution for setting up a deployable production environment for a simplified application. This environment consists of a API service deployed on Azure Cloud. The goal is to automate the setup of this production environment using "infrastructure as code" principles. Below are the steps to achieve this:

## Prerequisite and Tools Used

> Note: The solution development was conducted on a MacBook M1. Therefore, the instructions are tailored for use in a macOS environment or a similar development environment.

Before we get started ensure you have below tools setup:
### Development

- *Python v3.11* - For developing the Flask API application.
- *Terraform v1.5.7* - Leading Infrastructure as Code framework for building Cloud & On-Prem Infrastructure.
- *GoLang go v1.21.1 (Optional)* - We are using `Terratest` for testing our TF Code. So only if you wish to write or run tests then you would require it.
- *Docker Desktop* - Used for containerizing and testing the application locally.
- *Azure Cloud Account (Optional)* - For deploying the application to the Cloud Environment.
- *Azure Container Apps* - A fully managed serverless containerized application platform. We are deploying our API service to it.
- *Github Account (Free Tier)* - If you would like to fork this repo and run the pipeline.
- *Github Actions* - Our CI/CD platform providing a cloud agnostic approach for application and infrastructure deployment.
- *DockerHub* - For storing our private docker image. SaaS solution quick to use. Ideally for a enterprise solution we need a Paid tier of DockerHub or use other solutions such Azure Container Registry etc.
- *Behave* - For BDD testing using the Gherkins Syntax of the API.

### DevSecOps Toolings

All the tools we have used so far are Free to use for personal usage.

- *TFSec* - Scans Terraform Code for vulnerable configurations.
- *TFLint* - Linting the TF Code
- *Terraform-Compliance* - Lightweight, security and compliance focused test framework.
- *Terratest* - For Unit Testing the IAC and ensuring the configuration matches the desired state.
- *Bandit* - A python lib for static code analysis.
- *Safety* - A python lib for dependency vulnerability analysis.
- *Checkov* - IAC vulnerability scanning tool, we have used it for scanning our Dockerfile.
- *trivy* - For scanning vulnerabilities in docker image even before pushing it to the registry. 
- *Owasp Zap* - PenTest
- *Dependabot and Mergify* - Dependabot bumps the dependencies by creating a PR. This helps us keep our dependencies up to date and avoid vulnerabilities. We also use Mergify to streamline the PR merging process, automating it when all the necessary checks and criteria are satisfied.
## Running the API Service and DB locally
1. Start Docker Desktop
2. From the root directory of this repository execute below command:
    ```bash
    make start-app-db
    ```
    The above command uses docker compose to run containerized instance of our API and `postgres-13.5` database and then uploads the mock data into the postgres database.

3. Test the application by making API requests. For example:
   ```bash
   curl "http://127.0.0.1:3000/rates?date_from=2021-01-01&date_to=2021-01-31&orig_code=CNGGZ&dest_code=EETLL"
   ```
    <details>
    <summary>Click here to check the local execution steps</summary>
    
    #### Running the database

    There’s an SQL dump in `db/rates.sql` that needs to be loaded into a PostgreSQL 13.5 database.
    
    After installing the database, the data can be imported through:
    
    ```bash
    createdb rates
    psql -h localhost -U postgres < db/rates.sql
    ```
    
    You can verify that the database is running through:
    
    ```bash
    psql -h localhost -U postgres -c "SELECT 'alive'"
    ```
    
    The output should be something like:
    
    ```bash
     ?column?
    ----------
     alive
    (1 row)
    ```
    
    #### Running the API service
    
    Start from the `rates` folder.
    
    ##### Install prerequisites
    
    ```
    DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y python3-pip
    pip install -U gunicorn
    pip3 install -Ur requirements.txt
    ```
    
    ##### Run the application
    ```
    gunicorn -b :3000 wsgi
    ```
    
    The API should now be running on [http://localhost:3000](http://localhost:3000).
    
    ##### Test the application
    
    Get average rates between ports:
    ```
    curl "http://127.0.0.1:3000/rates?date_from=2021-01-01&date_to=2021-01-31&orig_code=CNGGZ&dest_code=EETLL"
    ```
    
    The output should be something like this:
    ```json
    {
       "rates" : [
          {
             "count" : 3,
             "day" : "2021-01-31",
             "price" : 1154.33333333333
          },
          {
             "count" : 3,
             "day" : "2021-01-30",
             "price" : 1154.33333333333
          },
          ...
       ]
    }
    ```
    </details>

## Infrastructure as Code
The solution includes infrastructure as code components that allow you to deploy this environment on cloud providers such as Azure. Detailed instructions on how to deploy this environment to AWS or other clouds are provided in the codebase.

**[WIP]**

# Theoretical Case: Secure Database Access

**[WIP]**

# Assumptions

# ToDo
- Migrate from Pip to modern package manager like `Pipenv` or `Poetry` for better dependency management.
- Use `Terratest` for Integration test.
- Implement a `Smoke/E2E` testing for IAC once the Infrastructure is provisioned. Execute on a scheduled event to detect any drift from the desired state defined as IAC.
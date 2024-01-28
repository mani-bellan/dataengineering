# dataengineering
This is a repository for all my pet projects/course on data engineering stuff

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. *

### Prerequisites

* Create a Google cloud account and create a project
* Install Terraform 
* Install Docker Desktop
* Install jupyter notebook
* Add your terraform keys
* Update the variable.tf with the details of credentials, project id, gcp bucket name and gcp dataset name


### Installing

* Terraform
```bash
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
```
* Jupyter
```python
pip install jupyter
```

* Docker
** https://www.docker.com/products/docker-desktop/

### Running
* Check the docker_notes.txt for some commands
* For terraform
```bash
terraform init
terraform plan
terraform deploy
terraform destroy
```

## Built Using
<img height="50" src="https://user-images.githubusercontent.com/25181517/192108372-f71d70ac-7ae6-4c0d-8395-51d8870c2ef0.png"> 
<img height="50" src="https://user-images.githubusercontent.com/25181517/192108374-8da61ba1-99ec-41d7-80b8-fb2f7c0a4948.png">
<img height="50" src="https://user-images.githubusercontent.com/25181517/192108891-d86b6220-e232-423a-bf5f-90903e6887c3.png">
<img height="50" src="https://user-images.githubusercontent.com/25181517/183914128-3fc88b4a-4ac1-40e6-9443-9a30182379b7.png"> 
<img height="50" src="https://user-images.githubusercontent.com/25181517/183423507-c056a6f9-1ba8-4312-a350-19bcbc5a8697.png">
<img height="50" src="https://user-images.githubusercontent.com/25181517/117208740-bfb78400-adf5-11eb-97bb-09072b6bedfc.png"> 
<img height="50" src="https://user-images.githubusercontent.com/25181517/192158606-7c2ef6bd-6e04-47cf-b5bc-da2797cb5bda.png">
<img height="50" src="https://user-images.githubusercontent.com/25181517/117207330-263ba280-adf4-11eb-9b97-0ac5b40bc3be.png">
<img height="50" src="https://user-images.githubusercontent.com/25181517/183345121-36788a6e-5462-424a-be67-af1ebeda79a2.png">
<img height="50" src="https://user-images.githubusercontent.com/25181517/183911547-990692bc-8411-4878-99a0-43506cdb69cf.png">
<img height="50" src="https://user-images.githubusercontent.com/25181517/186884152-ae609cca-8cf1-4175-8d60-1ce1fa078ca2.png">

## Authors

* **Manikandan Bellan** - [Mani Bellan](https://github.com/mani-bellan/)

## Acknowledgments

* http://datatalks.club for the awsome course of Data Engineering


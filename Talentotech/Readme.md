
Se realizará una inrfaestructura como codigo para AWS usando los siguientes recursos 

* Instancia EC2
* Base de datos RDS
* Bucket S3
* Quicksight

Se debe agregar un archivo account.tf con las access Keys y region de trabajo en AWS 

provider "aws" {
  region = "us-east-1"
  access_key = "**************"
  secret_key = "************"
} 
````````
listo
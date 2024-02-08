terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}
terraform {
  backend "remote" {
    organization = "totoro_org_1234"

    workspaces {
      name = "terraform_curso_tecnofor"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-central-1"
}

resource "aws_instance" "Prueba1_ec2" {
  ami           = "ami-02fe204d17e0189fb"
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformCloudGitCambio1"
  }
}

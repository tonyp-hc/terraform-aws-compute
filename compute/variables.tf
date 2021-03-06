variable "prefix" {
}

variable "env" {
}

variable "owner" {
}

variable "ttl" {
  default = 72
}

variable "ami_id" {
  default = "ami-02b623ddeb82e23a0"
}

variable "instance_type" {
  default = "t2.nano"
}

variable "key_name" {
}

data "terraform_remote_state" "vpc" {
  backend = "remote"
  config = {
    organization = "TonyPulickal"
    workspaces = {
      name = "demo-aws-vpc"
    }
  }
}

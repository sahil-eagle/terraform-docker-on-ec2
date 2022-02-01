# Put the following two keys into shell or env variables

#variable "aws_access_key" {
#  description = "AWS access key, must pass on command line using -var"
#}

#variable "aws_secret_key" {
#  description = "AWS secret access key, must pass on command line using -var"
#}

variable "aws_region" {
  description = "US EAST Virginia"
  default     = "us-east-1"
}

# specifying AZs 
#   comment off this "azs" to retrive all AZs dynamically (uncomment the line above "data ...")
variable "azs" {
  type = list(string)
  default = ["us-east-1a"]
}

variable "ec2_amis" {
  description = "Ubuntu Server 16.04 LTS (HVM)"
  type        = map(string)

  default = {
    "us-east-1" = "ami-059eeca93cf09eebd"
  }
}

variable "public_subnets_cidr" {
  type = list(string)
  default = ["10.0.0.0/24", "10.0.2.0/24", "10.0.4.0/24"]
}

variable "private_subnets_cidr" {
  type = list(string)
  default = ["10.0.1.0/24", "10.0.3.0/24", "10.0.5.0/24"]
}

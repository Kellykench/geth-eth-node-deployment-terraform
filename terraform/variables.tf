variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  default = "ami-0c55b159cbfafe1f0"
}

variable "key_name" {
  description = "Name of your EC2 Key Pair"
  type        = string
}
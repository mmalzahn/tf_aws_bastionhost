variable "instance_type" {
  default = "t2.micro"
}
variable "vpc_id" {}

variable "subnet_id" {}

variable "pingable" {
  default = true
}

variable "project_name" {
  default = "Prj123"
}

variable "resource_prefix" {
  default="prefix_"}
variable "resource_name" {
  default=""
}

variable "resource_suffix" {
  default = "_suffix"
}

variable "resource_tags" {
  type = "map"
  default={}
}

variable "debug_on" {
  default = true
}

variable "aws_key_name" {
  default = ""
}

# variable "aws_region" {
#   default     = "eu-west-1"
#   description = "AWS Region fuer das Deployment"
# }
# variable "project_name" {}
# variable "optimal_design" {
#   default = false
# }
# variable "laufzeit_tage" {
#   default = 60
# }


variable "tag_responsibel" {
  description = "Wer ist fuer die Resourcen zustaendig"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "subnet_id" {}

variable "pingable" {
  default = true
}
variable "project_name" {
  default = "Prj123"
}

variable "resource_prefix" {}
variable "resource_name" {}

variable "resource_suffix" {
  default = ""
}

variable "resource_tags" {
  type = "map"
}

# variable "aws_region" {
#   default     = "eu-west-1"
#   description = "AWS Region fuer das Deployment"
# }
# variable "aws_key_name" {}
# variable "project_name" {}
# variable "optimal_design" {
#   default = false
# }
# variable "laufzeit_tage" {
#   default = 60
# }


# variable "debug_on" {
#   default = true
# }


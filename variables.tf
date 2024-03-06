#variable "instance_type" {
#  description = "Type of EC2 instance to provision"
#  default     = "t3.nano"
#  availability_zone  = "eu-west-1a"  # Explicitly set the desired zone
#}

variable "instance_type" {
  description = "Value of the Name tag for the EC2 instance type"
  type        = string
  default     = "t3.nano"
}

variable "az_1a" {
  description = "availability zone 1"
  type        = string
  default     = "eu-west-1"
}

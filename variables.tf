variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
  availability_zone  = "eu-west-1a"  # Explicitly set the desired zone
}

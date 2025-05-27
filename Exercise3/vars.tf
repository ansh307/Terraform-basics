variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"

}

variable "zone" {
  description = "The availability zone to deploy the instance in"
  type        = string
  default     = "us-east-1a"

}

variable "amiID" {
  description = "The AMI ID to use for the instance"
  type        = map(any)
  default = {
    "us-east-1" = "ami-0953476d60561c955"
    "us-east-2" = "ami-06c8f2ec674c67112"
  }
}
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
    "us-east-1" = "ami-084568db4383264d4"
    "us-east-2" = "ami-04f167a56786e4b09"
  }
}

variable "webuser" {
  description = "The user to connect to the instance"
  type        = string
  default     = "ubuntu"
}
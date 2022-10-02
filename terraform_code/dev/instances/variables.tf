# Instance type
variable "instance_type" {
  default = {
    "development"     = "t2.micro"
  }
  description = "Type of the instance"
  type        = map(string)
}

# Variable to signal the current environment 
variable "env" {
  default     = "development"
  type        = string
  description = "Deployment Environment"
}

variable "ecr_repo" {
  default     = ["software", "mysqldatabase"]
  type        = set(string)
  description = "Amazon ECR Repository Names"
}

variable "sg_ports" {
  default     = ["22","80","8081","8082", "8083"]
  type        = list(string)
  description = "Ports that should be open on the host machine"
}



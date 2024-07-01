variable "vpc_name" {
  description = "vpc 이름"
  type        = string
}

variable "vpc_cidr" {
  description = "vpc에서 사용하는 CIDR block"
  type        = string
}

variable "region" {
  description = "aws 리전"
  type        = string
}

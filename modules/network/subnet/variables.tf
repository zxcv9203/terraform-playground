variable "vpc_id" {
  description = "vpc id"
  type        = string
}
variable "subnets" {
  description = "생성할 서브넷 목록 리스트"
  type = list(object({
    name              = string
    cidr_block        = string
    availability_zone = string
    type              = string
  }))
}

output "public_subnet_ids" {
  description = "public 영역의 서브넷 id 목록입니다."
  value       = [for s in aws_subnet.this : s.id if var.subnets[count.index].type == "public"]
}

output "private_subnet_ids" {
  description = "private 영역의 서브넷 id 목록입니다."
  value       = [for s in aws_subnet.this : s.id if var.subnets[count.index].type == "private"]
}

output "subnet_details" {
  description = "각 서브넷의 상세 내용에 대한 목록입니다."
  value = [for s in aws_subnet.this : {
    id                = s.id
    name              = each.value.name
    cidr_block        = each.value.cidr_block
    availability_zone = each.value.availability_zone
    type              = each.value.type
  }]
}

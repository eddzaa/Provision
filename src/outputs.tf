output "id" {
  description = "The ID of the instance"
  value = aws_instance.ec2.id
}

output "instance_state" {
  description = "The state of the instance"
  value = aws_instance.ec2.instance_state
}

output "public_ip" {
  description = "The public IP address assigned to the instance, if applicable."
  value = aws_instance.ec2.public_ip
}

output "tags_all" {
  description = "A map of tags assigned to the resource."
  value = aws_instance.ec2.tags_all
}

resource "aws_instance" "ec2" {
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name
  ami           = var.ami
  monitoring    = var.monitoring
  tags = var.tags
  
}

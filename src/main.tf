resource "aws_instance" "ec2" {
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name
  ami           = var.ami
  monitoring    = var.monitoring
  
  tags = var.tags
  
  dynamic "launch_template" {
    for_each = length(var.launch_template) > 0 ? [var.launch_template] : []

    content {
      id      = lookup(var.launch_template, "id", null)
      name    = lookup(var.launch_template, "name", null)
      version = lookup(var.launch_template, "version", null)
    }
  }
}

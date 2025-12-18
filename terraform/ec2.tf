resource "aws_instance" "web" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = "tata-key"
  security_groups = ["tata-sg"]

  tags = {
    Name = var.tag_name
    Env  = "Production"
  }
}

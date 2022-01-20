#provider que utilizamos para nossa cloud provider, no nosso caso usamos a aws.
provider "aws" {
  version = "~>3.58"
  region  = var.region
}
#o resource que utilizamos é o aws_instace para configurarmos nossa maquina virtual na aws 
resource "aws_instance" "mediawiki" {
  count = 3
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  tags = {
    Name        = "mediawiki${count.index +1 }"
    provisioner = "terraform"
    environment = var.environment
  }

#grupo de segurança que vai ser criado para acessos 
  vpc_security_group_ids = ["${aws_security_group.acesso_geral.id}"]

}
#configurando o grupo de acesso geral 
resource "aws_security_group" "acesso_geral" {
  name        = "acesso_geral"

#grupo de acesso interno 
  ingress = [{

    cidr_blocks      = ["0.0.0.0/0"]
    description      = "acesso interno"
    from_port        = 0
    ipv6_cidr_blocks = ["::/0"]
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0

  }]
#grupo de acesso externo 
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "acesso externo"
    from_port        = 0
    ipv6_cidr_blocks = ["::/0"]
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  tags = {
    name="acesso_geral"
  }
}

#Variaveis que utilizamos no nosso arquivo main

variable "region" {
  description = "região aonde nossa instacia vai ser instalad"
  default     = "sa-east-1"
}

variable "name" {
  description = "nome da aplicação"
  default     = "mediawiki"
}

variable "ami" {
  description = "tempalte que iremos usar na aws"
  default     = "ami-090006f29ecb2d79a"
}

variable "instance_type" {
  description = "tipo do flavor que iremos usar na nossa instacia"
  default     = "t2.micro"
}

variable "environment" {
  description = "ambiente da aplicação"
  default     = "prod-mediawiki"
}

variable "key_name" {
  description = "nome da key pair"
  default     = "inserir sua key pair"

}
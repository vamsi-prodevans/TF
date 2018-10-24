variable "env" {
  description = "env: dev or prod"
}

variable "container_name" {
  description = "name of the container"
  type = "map"
  default = {
    dev = "dev_blog"
    prod = "prod_blog"
  }
}


variable "image" {
  description = "image of the container"
  type = "map"
  default = {  
    dev = "docker.io/ghost:latest"
    prod = "docker.io/ghost:alpine"
  }
}

variable "int_port" {
  description = "internal port for the container"
  default = "2368"
}

variable "ext_port" {
  description = "external port of the container"
  type = "map"
  default = {  
    dev = "8080"
    prod = "80"
  }
}


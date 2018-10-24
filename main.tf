#Download latest ghost image

module "image" {
  source = "./image"
  image = "${lookup(var.image, var.env)}"
}

#Start the container

module "container" {
  source = "./container"
  image = "${module.image.image_out}"
  name = "${lookup(var.container_name,var.env)}"
  int_port = "${var.int_port}"
  ext_port = "${lookup(var.ext_port,var.env)}"
}

















#variable "container_name" {
#  description = "name of the container"
#  default = "blog"
#}

#variable "image" {
#  description = "image of the container"
#  default = "docker.io/ghost:latest"
#}

#variable "int_port" {
#  description = "internal port for the container"
#  default = "2368"
#}

#variable "ext_port" {
#  description = "external port of the container"
#  default = "80"
#}


#Download the latest  Ghost image
#resource "docker_image" "image_id" {
#  name = "docker.io/ghost:latest"
#}

#Start the container
#resource "docker_container" "container_id" {
#  name  = "blog"
#  image = "${docker_image.image_id.latest}"
#  ports {
#    internal = "${var.int_port}"
#    external = "${var.ext_port}"
#  }
#}

#Output the IP Address of the Container
#output "IP Address" {
#  value = "${docker_container.container_id.ip_address}"
#}

#output "container_name" {
#  value = "${docker_container.container_id.name}"
#}


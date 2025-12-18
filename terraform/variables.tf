variable "ami" {
  default = "ami-02fd3a7148f1c5fea"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "tag_name" {
  default = "prod"
}
variable "block1" {
  default = "10.0.0.0/20"
}
variable "block2" {
  default = "10.0.1.0/24"
}
variable "block3" {
  default = "10.0.2.0/24"
}
variable "block4" {
  default = "0.0.0.0/0"
}
variable "vpcname" {
  default = "new_vpc"
}
variable "pubsubnet1" {
  default = "new_pub"
}
variable "privatebsubnet1" {
  default = "new_pub"
}

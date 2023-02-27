variable "cidr_vpc" {
  type        = string
  default     = "10.0.0.0/16"
  description = "bloco de ip vpc"

}

variable "cidr_subnet" {
  type        = string
  default     = "10.0.1.0/24"
  description = "bloco de ip subnet"

}

variable "route_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "route_table"

}
variable "environment" {
  description = "ambiente onde o recurso vai ser utilizado"
  type        = string
  default     = "desenvolvimento"
}
resource "null_resource" "fruits" {
  provisioner "local-exec" {
    command = " echo ${ length(var.fruits)}"
  }}
variable "fruits"{
  default={
    apple = 10
    orange = 200
    banana = 100
  }

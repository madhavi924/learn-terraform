esorce "null_resource" "fruits" {
  provisioner "local-exec" {
    command = " echo ${ leanth(var.fruits)}"
  }}
variable "fruits"{
  default={
    apple = 10
    orange = 200
    banana = 100
  }

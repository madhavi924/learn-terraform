resource "null_resource" "nothing" {
  provisioner "local-exec" {
    command = "echo Hello from module - ${var.input}"
  }
}
variable "input"{}

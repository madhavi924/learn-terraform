variable "sample_string" {
  default = "Hello World"
}

## shell scripting equivalent sample_string="hello World"

# print in shell script we use echo , following is the syntax in shell
# echo $sample_string

output "sample_string" {
  value = "var.sample_string"
}

## in the above we are printing just variable, if variable is a combination of some strings then following is the syntax. ${} is mandatory if we include the variable inside a string

output "sample string1" {
  value = "value of sample_string = ${var.sample_string}"
}
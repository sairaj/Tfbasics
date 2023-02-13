variable "City" {} # This is how we declare an empty variable

output "printing-city"{
    value = "value of the city is ${var.City}"
}

variable "State" {}

output "print-state" {
    value = "Name of the state is ${var.State}"
}

variable "Project" {}

output "print-project" {
    value = "Name of the project is ${var.Project}"
}
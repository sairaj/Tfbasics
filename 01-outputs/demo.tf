output "sample" {
    value = "Welcome to Terraform basics"
}

variable "demo" {
    default = "Terraform trianing"
}

output "printing-demo" {
    value = "Value is ${var.demo}"
}

output "print-demo" {
    value = var.demo
}

# Note : A variable can be accessed without ${} as well, only if its the only declared entry in the value part of the output. 
        // If you're using the variable in between the strings, you need to enclose them in the quotes and ${} . 
        // There is no concept of single quotes `'` in terraform

# string, number , boolean data types are there in Terraform
# Default variable type
# List variable type
# map variable type (python dictionary)

variable "example-list" {
    default = [
        "AWS",
        "DevOps",
        true,
        100
    ]
}

output "printingList" {
    value = "Welcome to ${var.example-list[0]} and ${var.example-list[1]} training, Hours of tutorial ${var.example-list[3]}. Final boolean: ${var.example-list[2]}"
}

variable "ex-map" {
    # type = "map"
    default = {
        Duration = 100,
        Trainer = "verma",
        Cloud = "Aws"
    }
}

output "printingMap" {
    value = "Welcome to ${var.ex-map["Cloud"]} Devops training. Duration of training is ${var.ex-map["Duration"]}. Trainer Name is ${var.ex-map["Trainer"]}"
}
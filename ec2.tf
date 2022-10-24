resource "aws_instance" "andrey-example" {
  ami           = var.AMIS[var.region]
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.andrey-example.private_ip} >> private_ips.txt"
  }
}

output "ip" {
  value = aws_instance.andrey-example.public_ip
}

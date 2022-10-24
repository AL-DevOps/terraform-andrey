resource "aws_instance" "andrey-example" {
  ami           = var.AMIS[var.region]
  instance_type = "t2.micro"
  subnet_id= "subnet-06ce4996838ec4d88"
  vpc_security_group_ids = ["sg-04f2d5d1786a702f1"]
  tags = {
    Name = "andrey-demo4"
  }
  
  provisioner "local-exec" {
    command = "echo private ip: ${aws_instance.andrey-example.private_ip} >> ips.txt"
  }
  provisioner "local-exec" {
    command = "echo public ip: ${aws_instance.andrey-example.public_ip} >> ips.txt"
  }
}

output "ip" {
  value = aws_instance.andrey-example.public_ip
}

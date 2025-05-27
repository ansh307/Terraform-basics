resource "aws_instance" "web" {
  ami = var.amiID[var.region]
  # ami           = data.aws_ami.amiID.id
  instance_type = "t3.micro"

  key_name = aws_key_pair.dove-key.key_name

  vpc_security_group_ids = [
    aws_security_group.dove-sg.id
  ]

  availability_zone = var.zone

  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  connection {
    type        = "ssh"
    user        = var.webuser
    private_key = file("${path.module}/dovekey1")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }
}

resource "aws_ec2_instance_state" "web_state" {
  instance_id = aws_instance.web.id
  state       = "running"
}
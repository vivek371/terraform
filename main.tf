resource "aws_instance""app_server"{
  ami                            = lookup(var.awsprops, "ami")
  instance_type                  = lookup(var.awsprops, "itype")
  subnet_id                      = lookup(var.awsprops, "subnet")
  associate_public_ip_address    = lookup(var.awsprops, "publicip")
  key_name                       = lookup(var.awsprops, "keyname")
  vpc_security_group_ids         = lookup(var.secgroupname, "secgroupname")
  root_block_device {
       delete_on_termination = true
       volume_size           = "8"
       volume_type           = "gp2"
}
tags = {
  name = "Test instance"
  }
}

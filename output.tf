output "InstanceIp" {
  value = aws_instance.app_server.public_ip
}
output "InstanceId" {
  value = aws_instance.app_server.id
}

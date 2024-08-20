output "EC2_ips" {
  value = aws_instance.ubuntu-instance[*].public_ip
}
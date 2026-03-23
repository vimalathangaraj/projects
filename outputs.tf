output "ec2_instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.ec2.id
}

output "ec2_public_ip" {
  description = "EC2 public IP"
  value       = aws_instance.ec2.public_ip
}

output "s3_bucket_name" {
  description = "S3 bucket name"
  value       = aws_s3_bucket.bucket.bucket
}
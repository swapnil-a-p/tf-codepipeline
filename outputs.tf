output "artifact_bucket_id" {
  description = "ID of the artifact bucket."
  value       = aws_s3_bucket.artifact_store.id
}

output "artifact_bucket_arn" {
  description = "ARN of the artifact bucket."
  value       = aws_s3_bucket.artifact_store.arn
}

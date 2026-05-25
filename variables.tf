variable "aws_region" {
  description = "AWS region for resource creation."
  type        = string
  default     = "us-east-1"
}

variable "artifact_bucket_name" {
  description = "Name of the S3 bucket used for pipeline artifacts or shared deployment assets."
  type        = string
}

variable "tags" {
  description = "Tags applied to all supported resources."
  type        = map(string)
  default = {
    Project     = "tf-codepipeline"
    ManagedBy   = "Terraform"
    Environment = "sandbox"
  }
}

resource "aws_s3_bucket" "artifact_store" {
  bucket = var.artifact_bucket_name

  tags = var.tags
}

resource "aws_s3_bucket_versioning" "artifact_store" {
  bucket = aws_s3_bucket.artifact_store.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "artifact_store" {
  bucket = aws_s3_bucket.artifact_store.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "artifact_store" {
  bucket = aws_s3_bucket.artifact_store.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

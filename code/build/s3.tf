provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "b1260c38-f308-4cd5-ab33-35468f57d85d"
    git_commit           = "154c495bd8cfd7a6777bfe37dfde2cc49b2368b5"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-11 17:48:04"
    git_last_modified_by = "lewisbet9@gmail.com"
    git_modifiers        = "lewisbet9"
    git_org              = "lewisawe"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

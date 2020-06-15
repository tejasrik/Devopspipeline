provider "aws" {
  region = "${var.aws_region}"
  access_key = "AKIAVYQAGAIF2VBHB552"
  secret_key = "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"
}

resource "random_id" "tf_bucket_id" {
  byte_length = 2
}

resource "aws_s3_bucket" "tf_code" {
  bucket = "${var.project_name}-${random_id.tf_bucket_id.dec}"
  acl    = "private"

  force_destroy = true
}

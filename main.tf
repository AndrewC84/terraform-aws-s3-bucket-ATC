module "my_application" {
  source = "./modules/my-app"

  # Pass the bucket name into the module variable
  app_bucket_name = aws_s3_bucket.my_storage_bucket.id
}
module "terraform-aws-s3-bucket-ATC" {
  source  = "app.terraform.io/policy-as-code-training/terraform-aws-s3-bucket-ATC/AWS"
  version = "1.1.0"
  # insert required variables here
}

module "s3_bucket" {
  source  = "app.terraform.io/policy-as-code-training/s3-bucket-ATC/aws"
  version = "1.0.0"
  
  bucket_name = "your-unique-bucket-name-20251116-ATC"
}

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
}
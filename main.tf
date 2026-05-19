module "my_application" {
  source = "./modules/my-app"

  # Pass the bucket name into the module variable
  app_bucket_name = aws_s3_bucket.my_storage_bucket.id
}


resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
}
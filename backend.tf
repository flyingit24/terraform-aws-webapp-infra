terraform {
  backend "s3" {
    bucket         = "web-terraform-state-bucket2025"         # Replace
    key            = "web-db/terraform.tfstate"
    region         = "us-east-1"                            # Replace
    dynamodb_table = "terraform-locks"                      # Replace
    encrypt        = true
  }
}

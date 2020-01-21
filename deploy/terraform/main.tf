provider "aws" {
    region = var.region
}

resource "aws_ecr_repository" "$CI_PROJECT_NAME" {
  name                 = "$CI_PROJECT_NAME"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

terraform {
        backend "s3" {
                bucket = "andrey-bucket-terraform-statefiles"
                dynamodb_table = "andrey-dynamodb-table-terraform"
                key = "andrey/terraform/state/terraform.tfstate"
                region = "eu-central-1"
        }
}

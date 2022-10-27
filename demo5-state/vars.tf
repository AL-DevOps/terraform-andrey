variable region {
  default = "eu-central-1"
}
variable AMIS {
  type        = map(string)
  default     = {    
    "eu-west-1" = "ami-04e2e94de097d3986"
    "us-east-1" = "ami-01d08089481510ba2"
    "eu-central-1" = "ami-0d0dd86aa7fe3c8a9"
    "us-west-1" = "ami-064562725417500be"
  }
}

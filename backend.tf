terraform {
  backend "s3" {
    bucket = "woshunkeye-devops-training"
    key    = "training/june2021/day3-statefile"
    region = "eu-west-2"
  }
}
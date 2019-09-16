provider "aws" {
  region = "eu-west-1" // The region for the S3 buckets and the CloudFront distribution
}

module "website" {
  source = "./modules"
  domain = "test-devops.com" // no www here

  # optional: enable health check on www.mysite.com
  enable_health_check = true
  health_check_alarm_sns_topics = [
    "<arn of a topic to notify for health check alarms>"
  ]
}

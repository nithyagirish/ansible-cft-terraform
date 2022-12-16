variable "name" {
	default = "cloudwatch-alarm"
}
variable "operator" {
	default = "GreaterThanOrEqualToThreshold"
}

variable "evaluation-period" {}

variable "metric-name" {}
variable "namespace1" {}
variable "period1" {}
variable "statistics1" {}
variable "thresholed1" {}
variable "description" {}






resource "aws_cloudwatch_metric_alarm" "ec2-alarm" {
  alarm_name                = "name"
  comparison_operator       = "operator"
  evaluation_periods        = "evaluation-period"
  metric_name               = "metric-name"
  namespace                 = "namespace1"
  period                    = "period1"
  statistic                 = "statistics1"
  threshold                 = "thresholed1"
  alarm_description         = "description"

}
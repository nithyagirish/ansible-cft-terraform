
resource "aws_cloudwatch_metric_alarm" "ec2-alarm" {
  alarm_name                = "name1"
  comparison_operator       = "operator1"
  evaluation_periods        = "evaluation_period1"
  metric_name               = "metric_name1"
  namespace                 = "namespace1"
  period                    = "period1"
  statistic                 = "statistics1"
  threshold                 = "threshold1"
  alarm_description         = "description1"

}
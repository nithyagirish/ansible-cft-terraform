
resource "aws_cloudwatch_metric_alarm" "ec2-alarm" {
  alarm_name                = "name1"
  comparison_operator       = "operator"
  evaluation_periods        = "evaluation_period"
  metric_name               = "metric_name"
  namespace                 = "namespace1"
  period                    = "period1"
  statistic                 = "statistics1"
  threshold                 = "thresholed1"
  alarm_description         = "description"

}
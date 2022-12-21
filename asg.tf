resource "aws_autoscaling_group" "web" {
  name = "name1"
  min_size             = "min"
  desired_capacity     = "desired"
  max_size             = "max"
  
  health_check_type    = "health_check_type1"
  launch_configuration = "launch_config"
  enabled_metrics = [
    "GroupMinSize",
    "GroupMaxSize",
    "GroupDesiredCapacity",
    "GroupInServiceInstances",
    "GroupTotalInstances"
  ]
  metrics_granularity = "1Minute"
  vpc_zone_identifier  = demosubnet

# Required to redeploy without an outage.
  lifecycle {
    create_before_destroy = true
  }
tag {
    key                 = "Name"
    value               = "name1"
    propagate_at_launch = true
  }
}





resource "aws_autoscaling_policy" "web_policy_up" {
  name = "asg_up_policy"
  scaling_adjustment = 1
  adjustment_type = "ChangeInCapacity"
  cooldown = 300
  autoscaling_group_name = "${aws_autoscaling_group.web.name}"


resource "aws_cloudwatch_metric_alarm" "web_cpu_alarm_up" {
  alarm_name = "web_cpu_alarm_up1"
  comparison_operator = "comparison_operator1"
  evaluation_periods = "evaluation_period_up"
  metric_name = "metric"
  namespace = "namespace1"
  period = "period_up"
  statistic = "Average1"
  threshold = "threshold_up"
  dimensions = {
     AutoScalingGroupName = "${aws_autoscaling_group.web.name}"
   }
  alarm_description = "This metric monitor EC2 instance CPU utilization"
  alarm_actions = [ "${aws_autoscaling_policy.web_policy_up.arn}" ]
}


resource "aws_autoscaling_policy" "web_policy_down" {
  name = "asg_down_policy"
  scaling_adjustment = -1
  adjustment_type = "ChangeInCapacity"
  cooldown = 300
  autoscaling_group_name = "${aws_autoscaling_group.web.name}"
}

resource "aws_cloudwatch_metric_alarm" "web_cpu_alarm_down" {
  alarm_name = "web_cpu_alarm_down"
  comparison_operator = "comparison_operator2"
  evaluation_periods = "evaluation_period_down"
  metric_name = "metric"
  namespace = "namespace1"
  period = "period_down"
  statistic = "Average"
  threshold = "threshold_down"
  dimensions = {
    AutoScalingGroupName = "${aws_autoscaling_group.web.name}"
  }
  alarm_description = "This metric monitor EC2 instance CPU utilization"
  alarm_actions = [ "${aws_autoscaling_policy.web_policy_down.arn}" ]
}

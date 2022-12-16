resource "aws_sns_topic" "this" {

  name        = "name1"
  name_prefix = "name_prefix1"

  display_name                             = "display_name1"
  policy                                   = "policy1"
  delivery_policy                          = "delivery_policy1"
  application_success_feedback_role_arn    = "application_success_feedback_role_arn1"
  application_success_feedback_sample_rate = "application_success_feedback_sample_rate1"
  application_failure_feedback_role_arn    = "application_failure_feedback_role_arn1"
  firehose_success_feedback_role_arn       = "firehose_success_feedback_role_arn1"
  firehose_success_feedback_sample_rate    = "firehose_success_feedback_sample_rate1"
  firehose_failure_feedback_role_arn       = "firehose_failure_feedback_role_arn1"
  http_success_feedback_role_arn           = "http_success_feedback_role_arn1"
  http_success_feedback_sample_rate        = "http_success_feedback_sample_rate1"
  http_failure_feedback_role_arn           = "http_failure_feedback_role_arn1"
  lambda_success_feedback_role_arn         = "lambda_success_feedback_role_arn1"
  lambda_success_feedback_sample_rate      = "lambda_success_feedback_sample_rate1"
  lambda_failure_feedback_role_arn         = "lambda_failure_feedback_role_arn1"
  sqs_success_feedback_role_arn            = "sqs_success_feedback_role_arn1"
  sqs_success_feedback_sample_rate         = "sqs_success_feedback_sample_rate1"
  sqs_failure_feedback_role_arn            = "sqs_failure_feedback_role_arn1"
  kms_master_key_id                        = "kms_master_key_id1"
  fifo_topic                               = "fifo_topic1"
  content_based_deduplication              = "content_based_deduplication1"

}
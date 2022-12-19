resource "aws_sns_topic" "this" {

  name        = "name1"
  name_prefix = "name_prefix1"
  display_name                             = "display_name1"
  fifo_topic                               = "fifo_topic1"
  content_based_deduplication              = "content_based_deduplication1"

}
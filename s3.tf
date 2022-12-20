
resource "aws_s3_bucket" "temp" {

    bucket = "bucket_name" 
    acl = "access"   
    versioning {
      enabled = "enable1"
  }
    force_destroy= "force_destroy1"


}
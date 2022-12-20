
resource "aws_s3_bucket" "temp" {

    bucket = "bucket_name" 
    acl = "access"   
    versioning {
      enabled = "enable"
  }
    force_destroy= "force_destroy1"


}
resource "b2_bucket" "tnb-home" {
  bucket_name = "tnb-home"
  bucket_type = "allPrivate"
  lifecycle_rules {
    days_from_hiding_to_deleting  = 1
    days_from_uploading_to_hiding = 0
    file_name_prefix              = ""
  }
}

resource "b2_application_key" "tnb-home-rw" {
  key_name  = "tnb-home-rw"
  bucket_id = b2_bucket.tnb-home.bucket_id
  capabilities = [
    "deleteFiles",
    "listBuckets",
    "listFiles",
    "readBucketEncryption",
    "readBucketNotifications",
    "readBucketReplications",
    "readBuckets",
    "readFiles",
    "shareFiles",
    "writeBucketEncryption",
    "writeBucketNotifications",
    "writeBucketReplications",
    "writeFiles",
  ]
}
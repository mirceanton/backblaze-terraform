resource "b2_bucket" "tnb-mirceanton-youtube" {
  bucket_name = "tnb-mirceanton-youtube"
  bucket_type = "allPrivate"
  lifecycle_rules {
    days_from_hiding_to_deleting  = 1
    days_from_uploading_to_hiding = 0
    file_name_prefix              = ""
  }
}

resource "b2_application_key" "tnb-mirceanton-youtube-rw" {
  key_name  = "tnb-mirceanton-youtube-rw"
  bucket_id = b2_bucket.tnb-mirceanton-youtube.bucket_id
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
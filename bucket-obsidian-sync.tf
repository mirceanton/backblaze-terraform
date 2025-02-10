import {
  to = b2_bucket.mirceanton-obsidian-sync
  id = "53fc2d544a4ff73594320f1e"
}
resource "b2_bucket" "mirceanton-obsidian-sync" {
  bucket_name = "mirceanton-obsidian-sync"
  bucket_type = "allPrivate"
  lifecycle_rules {
    days_from_hiding_to_deleting  = 1
    days_from_uploading_to_hiding = 0
    file_name_prefix              = ""
  }
}

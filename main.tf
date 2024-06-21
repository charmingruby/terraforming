module "buckets" {
  source  = "./bucket"
  buckets = ["videos", "documents", "images", "backup"]
}

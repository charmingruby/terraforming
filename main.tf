module "buckets" {
  source  = "./bucket"
  buckets = ["documents", "images", "users"]
}

module "buckets" {
  source  = "./bucket"
  buckets = ["documents", "backups"]
}

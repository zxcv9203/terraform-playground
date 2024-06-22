variables {
  s3_bucket_name = "tftest-bucket"
}

run "test_local_s3" {
  command = plan
  assert {
    condition = module.s3.s3_bucket_name == "tftest-bucket"
    error_message = "S3 버킷 이름이 다릅니다."
  }
}
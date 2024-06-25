remote_state {
    backend = "gcs"
    config = {
        bucket = "terraform-batch-14"
        prefix = "staging/${path_relative_to_include()}/terraform.tfstate"
        credentials = "/Users/adhithia/Documents/batch-14/terraform/terraform-3/credentials/google-cloud.json"
    }
}

inputs = {
    project     = "studidevops-adhithia"
    region      = "asia-southeast2"
    zone        = "asia-southeast2-a"
    credentials = "/Users/adhithia/Documents/batch-14/terraform/terraform-3/credentials/google-cloud.json"

    name = "${basename(get_terragrunt_dir())}"
    machine_type = "e2-micro"
}
remote_state {
    backend = "gcs"
    config = {
        bucket = "terraform-batch-14"
        prefix = "staging/${path_relative_to_include()}/terraform.tfstate"
        credentials = "/etc/atlantis/google-credentials.json"
    }
}

inputs = {
    project     = "studidevops-adhithia"
    region      = "asia-southeast2"
    zone        = "asia-southeast2-a"
    credentials = "/etc/atlantis/google-credentials.json"

    name = "${basename(get_terragrunt_dir())}"
    machine_type = "e2-micro"
}
// DELETED
terraform {
    source = "../../../../../module/google/instances"
}

include {
    path = find_in_parent_folders()
}

inputs = {
    tags         = ["http-server"]
    image        = "debian-cloud/debian-11"
    network      = "vpc-staging"
    subnetwork   = "vpc-staging"
    network_ip   = null
}
terraform {
    source = "../../../../../module/google/instances"
}

include {
    path = find_in_parent_folders()
}

inputs = {
    tags         = ["http-server"]
    image        = "debian-cloud/debian-11"
    network      = "default"
    subnetwork   = "default"
    network_ip   = null
}

// DELETED
terraform {
    source = "../../../../../module/google/vpc"
}

include {
    path = find_in_parent_folders()
}

inputs = {
    subnet_ip_cidr_range = "192.168.10.0/24"
    address_ip = "192.168.10.10"
    address_name = "webserver-dev"
}
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_key_path" {}
variable "aws_key_name" {}
variable "aws_region" {
  default = "us-east-1"
}

variable "bosh" {
  type = "map"
  default =  {
    version = "255.2"
    sha1 = "b08fefd771b33f209c3b844b5d316429523c78b1"
    aws_cpi_version = "44"
    aws_cpi_sha1 = "a1fe03071e8b9bf1fa97a4022151081bf144c8bc"
    type = "ruby"
    director_vm_size = "m3.medium"
    init_version = "0.0.81"
  }
}

variable "aws_centos_ami" {
  type = "map"
  default = {
    us-east-1 = "ami-61bbf104"
    us-west-1 = "ami-ba3c3bff"
    us-west-2 = "ami-3425be04"
    ap-northeast-1 = "ami-9392dc92"
    ap-southeast-1 = "ami-dcbeed8e"
    ap-southeast-2 = "ami-89e88db3"
    eu-west-1 = "ami-af6faad8"
    sa-east-1 = "ami-73ee416e"
  }
}

variable "centos_stemcell_version" {
  default = "3202"
}

variable "centos_stemcell_sha1" {
  default = "cd678525ae5f45c6d23ba2103094526d2c87f056"
}

variable "network" {
	default = "10.10"
}

variable "debug" {
  default = "false"
}


variable "install_docker_services" {
  default = "false"
}

variable "cf" {
  type = "map"
  default =  {
    admin_pass = "adminc1oudc0w"
    domain = "XIP"
    run_subdomain = "run"
    apps_subdomain = "apps"
    release_version = "231"
    etcd_version = "35"
    haproxy_version = "6"
    haproxy_ssl_pem = ""
    size = "tiny"
    private_domains = ""
    nats_user = "nats"
    pass = "c1oudc0w"
  }
}


variable "cf1_az" {
  type = "map"
  default = {
    us-east-1 = "us-east-1c"
    us-west-1 = "us-west-1c"
    us-west-2 = "us-west-2a"
    ap-northeast-1 = "ap-northeast-1a"
    ap-southeast-1 = "ap-southeast-1a"
    ap-southeast-2 = "ap-southeast-2a"
    eu-west-1 = "eu-west-1a"
    sa-east-1 = "sa-east-1a"
  }
}

variable "cf2_az" {
  type = "map"
  default = {
    us-east-1 = "us-east-1e"
    us-west-1 = "us-west-1b"
    us-west-2 = "us-west-2b"
    ap-northeast-1 = "ap-northeast-1b"
    ap-southeast-1 = "ap-southeast-1b"
    ap-southeast-2 = "ap-southeast-2b"
    eu-west-1 = "eu-west-1b"
    sa-east-1 = "sa-east-1b"
  }
}

variable "deployment_size" {
  default = "small"
}

variable backbone_z1_count {
  type = "map"
    default = {
        small  = "1"
        med    = "2"
        med-ha = "1"
        big-ha = "2"
    }
}
variable api_z1_count {
  type = "map"
    default = {
        small  = "1"
        med    = "2"
        med-ha = "1"
        big-ha = "2"
    }
}
variable services_z1_count {
  type = "map"
    default = {
        small  = "1"
        med    = "1"
        med-ha = "1"
        big-ha = "1"
    }
}
variable health_z1_count {
  type = "map"
    default = {
        small  = "1"
        med    = "1"
        med-ha = "1"
        big-ha = "1"
    }
}
variable runner_z1_count {
  type = "map"
    default = {
        small  = "1"
        med    = "2"
        med-ha = "1"
        big-ha = "3"
    }
}

variable backbone_z2_count {
  type = "map"
    default = {
        small  = "0"
        med    = "0"
        med-ha = "1"
        big-ha = "2"
    }
}
variable api_z2_count {
  type = "map"
    default = {
        small  = "0"
        med    = "0"
        med-ha = "1"
        big-ha = "2"
    }
}
variable services_z2_count {
  type = "map"
    default = {
        small  = "0"
        med    = "0"
        med-ha = "1"
        big-ha = "2"
    }
}
variable health_z2_count {
  type = "map"
    default = {
        small  = "0"
        med    = "0"
        med-ha = "1"
        big-ha = "1"
    }
}
variable runner_z2_count {
  type = "map"
  default = {
      small  = "0"
      med    = "0"
      med-ha = "1"
      big-ha = "3"
  }
}

variable additional_cf_sg_allow_1 { default = "" }
variable additional_cf_sg_allow_2 { default = "" }
variable additional_cf_sg_allow_3 { default = "" }
variable additional_cf_sg_allow_4 { default = "" }
variable additional_cf_sg_allow_5 { default = "" }

variable "backbone_resource_pool"        { default = "large" }
variable "data_resource_pool"            { default = "large" }
variable "public_haproxy_resource_pool"  { default = "small" }
variable "private_haproxy_resource_pool" { default = "small" }
variable "api_resource_pool"             { default = "medium" }
variable "services_resource_pool"        { default = "medium" }
variable "health_resource_pool"          { default = "medium" }
variable "runner_resource_pool"          { default = "runner" }


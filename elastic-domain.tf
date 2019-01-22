provider "aws" {
  access_key = "AKIAIKIGZOYHCGYCYKIQ"
  secret_key = "PdgXfPhveu55ddjt6Ny9vlT+YBSSyigvk5zbtias"
  region     = "us-east-1"
}

resource "aws_elasticsearch_domain" "example" {
  domain_name           = "glen-elastic-domain"
  elasticsearch_version = "6.3"

  cluster_config {
    instance_type = "t2.small.elasticsearch"
  }
  
  ebs_options {
    ebs_enabled = true
    volume_size = 10
    volume_type = "gp2"
  }
  
  snapshot_options {
    automated_snapshot_start_hour = 23
  }

  tags = {
    Domain = "TestDomain"
  }
}

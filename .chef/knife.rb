cookbook_path ["cookbooks", "site-cookbooks"]
node_path     "nodes"
role_path     "roles"
data_bag_path "data_bags"
#encrypted_data_bag_secret "data_bag_key"

knife[:berkshelf_path] = "cookbooks"

# AWS EC2
knife[:aws_access_key_id] = "#{ENV['AWS_ACCESS_KEY_ID']}"
knife[:aws_secret_access_key] = "#{ENV['AWS_SECRET_ACCESS_KEY']}"

knife[:region]                = "us-west-2"
knife[:availability_zone]     = "us-west-2a"
knife[:ssh_user]              = "ubuntu"
knife[:flavor]                = "t1.micro"
# Ubuntu 13.04 (Raring Ringtail) 64-bit EBS: http://cloud-images.ubuntu.com/releases/raring/
knife[:image]                 = "ami-b40c9084"
knife[:use_sudo]              = "true"

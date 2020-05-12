# terraforming.aws

# Install terraforming
gem install terraforming

# help
terraforming --help 

# import ec2 instances
terraforming ec2 --profile=default

# map terraform 
terraform import aws_instance.test_ec2 i-0421ae392a9e26277
where: 
  test_ec2 is the instance name
  i-0421ae392a9e26277 is the instance id


package Aws::EMR::Ec2InstanceAttributes {
  use Moose;
  has Ec2AvailabilityZone => (is => 'ro', isa => 'Str');
  has Ec2KeyName => (is => 'ro', isa => 'Str');
  has Ec2SubnetId => (is => 'ro', isa => 'Str');
  has IamInstanceProfile => (is => 'ro', isa => 'Str');
}
1

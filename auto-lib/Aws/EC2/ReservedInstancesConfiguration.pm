package Aws::EC2::ReservedInstancesConfiguration {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has InstanceType => (is => 'ro', isa => 'Str');
  has Platform => (is => 'ro', isa => 'Str');
}
1

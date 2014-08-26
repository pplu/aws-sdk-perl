package Aws::EC2::AvailabilityZoneMessage {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
}
1

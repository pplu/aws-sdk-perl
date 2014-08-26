package Aws::EC2::InstanceStatusDetails {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has ImpairedSince => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'impairedSince');
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
}
1

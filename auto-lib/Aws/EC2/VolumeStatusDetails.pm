package Aws::EC2::VolumeStatusDetails {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
}
1

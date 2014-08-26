package Aws::EC2::VpnStaticRoute {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'destinationCidrBlock');
  has Source => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'source');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
}
1

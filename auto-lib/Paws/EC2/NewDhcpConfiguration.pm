package Paws::EC2::NewDhcpConfiguration {
  use Moose;
  has Key => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'key');
  has Values => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'Value');
}
1;

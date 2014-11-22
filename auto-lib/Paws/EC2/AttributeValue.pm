package Paws::EC2::AttributeValue {
  use Moose;
  has Value => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'value');
}
1;

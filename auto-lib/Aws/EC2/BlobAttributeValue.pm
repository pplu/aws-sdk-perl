package Aws::EC2::BlobAttributeValue {
  use Moose;
  has Value => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'value');
}
1;

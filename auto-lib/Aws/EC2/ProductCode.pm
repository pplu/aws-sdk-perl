package Aws::EC2::ProductCode {
  use Moose;
  has ProductCodeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'productCode');
  has ProductCodeType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'type');
}
1

package Aws::EC2::AttributeBooleanValue {
  use Moose;
  has Value => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'value');
}
1;

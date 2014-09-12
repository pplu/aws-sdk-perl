package Aws::EC2::ReservedInstanceLimitPrice {
  use Moose;
  has Amount => (is => 'ro', isa => 'Num');
  has CurrencyCode => (is => 'ro', isa => 'Str');
}
1

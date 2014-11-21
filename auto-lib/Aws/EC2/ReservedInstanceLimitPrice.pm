package Aws::EC2::ReservedInstanceLimitPrice {
  use Moose;
  has Amount => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'amount');
  has CurrencyCode => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'currencyCode');
}
1;

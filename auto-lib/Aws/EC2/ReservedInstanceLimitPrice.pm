package Aws::EC2::ReservedInstanceLimitPrice {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Amount => (is => 'ro', isa => 'Num');
  has CurrencyCode => (is => 'ro', isa => 'Str');
}
1

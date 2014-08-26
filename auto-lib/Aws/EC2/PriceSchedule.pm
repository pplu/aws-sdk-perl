package Aws::EC2::PriceSchedule {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Active => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'active');
  has CurrencyCode => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'currencyCode');
  has Price => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'price');
  has Term => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'term');
}
1

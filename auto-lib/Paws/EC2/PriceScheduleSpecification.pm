package Paws::EC2::PriceScheduleSpecification {
  use Moose;
  has CurrencyCode => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'currencyCode');
  has Price => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'price');
  has Term => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'term');
}
1;

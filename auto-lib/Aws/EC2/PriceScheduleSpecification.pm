package Aws::EC2::PriceScheduleSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has Price => (is => 'ro', isa => 'Num');
  has Term => (is => 'ro', isa => 'Num');
}
1

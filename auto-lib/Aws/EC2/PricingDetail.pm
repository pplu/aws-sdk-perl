package Aws::EC2::PricingDetail {
  use Moose;
  has Count => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'count');
  has Price => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'price');
}
1

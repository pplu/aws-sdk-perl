package Aws::EC2::PricingDetail {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Count => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'count');
  has Price => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'price');
}
1

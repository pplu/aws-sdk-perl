package Aws::EC2::IamInstanceProfileSpecification {
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'arn');
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'name');
}
1;

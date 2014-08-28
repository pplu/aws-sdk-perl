package Aws::EC2::IamInstanceProfileSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Arn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
}
1

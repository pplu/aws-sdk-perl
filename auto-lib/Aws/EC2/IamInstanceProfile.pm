package Aws::EC2::IamInstanceProfile {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Arn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'id');
}
1

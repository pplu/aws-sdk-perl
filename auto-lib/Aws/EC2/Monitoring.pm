package Aws::EC2::Monitoring {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
}
1

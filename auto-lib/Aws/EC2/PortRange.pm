package Aws::EC2::PortRange {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has From => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'from');
  has To => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'to');
}
1

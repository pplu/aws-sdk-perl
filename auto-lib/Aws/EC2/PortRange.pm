package Aws::EC2::PortRange {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has From => (is => 'ro', isa => 'Int');
  has To => (is => 'ro', isa => 'Int');
}
1

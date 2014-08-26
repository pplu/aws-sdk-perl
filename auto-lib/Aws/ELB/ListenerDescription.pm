package Aws::ELB::ListenerDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has Listener => (is => 'ro', isa => 'Aws::ELB::Listener');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');
}
1

package Aws::ELB::ConnectionSettings {
  use Moose;
  with ('AWS::API::ResultParser');
  has IdleTimeout => (is => 'ro', isa => 'Int', required => 1);
}
1

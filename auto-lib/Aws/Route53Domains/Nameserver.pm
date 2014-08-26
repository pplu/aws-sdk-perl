package Aws::Route53Domains::Nameserver {
  use Moose;
  with ('AWS::API::ResultParser');
  has GlueIps => (is => 'ro', isa => 'ArrayRef[Str]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
}
1

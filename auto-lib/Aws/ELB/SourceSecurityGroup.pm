package Aws::ELB::SourceSecurityGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has GroupName => (is => 'ro', isa => 'Str');
  has OwnerAlias => (is => 'ro', isa => 'Str');
}
1

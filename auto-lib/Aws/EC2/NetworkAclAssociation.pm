package Aws::EC2::NetworkAclAssociation {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has NetworkAclAssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkAclAssociationId');
  has NetworkAclId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkAclId');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
}
1

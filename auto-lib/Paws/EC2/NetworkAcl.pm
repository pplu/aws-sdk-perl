package Paws::EC2::NetworkAcl {
  use Moose;
  has Associations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NetworkAclAssociation]', traits => ['Unwrapped'], xmlname => 'associationSet');
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NetworkAclEntry]', traits => ['Unwrapped'], xmlname => 'entrySet');
  has IsDefault => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'default');
  has NetworkAclId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkAclId');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}
1;

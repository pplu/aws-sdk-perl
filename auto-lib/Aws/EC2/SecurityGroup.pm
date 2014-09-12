package Aws::EC2::SecurityGroup {
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupDescription');
  has GroupId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupId');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::IpPermission]', traits => ['Unwrapped'], xmlname => 'ipPermissions');
  has IpPermissionsEgress => (is => 'ro', isa => 'ArrayRef[Aws::EC2::IpPermission]', traits => ['Unwrapped'], xmlname => 'ipPermissionsEgress');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}
1

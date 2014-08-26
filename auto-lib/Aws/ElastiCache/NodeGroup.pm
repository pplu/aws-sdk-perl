package Aws::ElastiCache::NodeGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has NodeGroupId => (is => 'ro', isa => 'Str');
  has NodeGroupMembers => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::NodeGroupMember]');
  has PrimaryEndpoint => (is => 'ro', isa => 'Aws::ElastiCache::Endpoint');
  has Status => (is => 'ro', isa => 'Str');
}
1

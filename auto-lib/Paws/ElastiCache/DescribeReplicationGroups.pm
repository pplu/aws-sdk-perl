
package Paws::ElastiCache::DescribeReplicationGroups {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReplicationGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::ReplicationGroupMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReplicationGroupsResult');
}
1;
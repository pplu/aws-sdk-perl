
package Paws::ElastiCache::DescribeCacheParameterGroups {
  use Moose;
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheParameterGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::CacheParameterGroupsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheParameterGroupsResult');
}
1;

package Aws::ElastiCache::CreateCacheParameterGroup {
  use Moose;
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::CreateCacheParameterGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheParameterGroupResult');
}
1;
  
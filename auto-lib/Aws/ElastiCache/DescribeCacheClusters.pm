
package Aws::ElastiCache::DescribeCacheClusters {
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ShowCacheNodeInfo => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DescribeCacheClustersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheClustersResult');
}
1;

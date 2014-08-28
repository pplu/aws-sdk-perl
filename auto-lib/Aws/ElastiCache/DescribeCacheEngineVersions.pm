
package Aws::ElastiCache::DescribeCacheEngineVersions {
  use Moose;
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DefaultOnly => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheEngineVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DescribeCacheEngineVersionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheEngineVersionsResult');
}
1;
  
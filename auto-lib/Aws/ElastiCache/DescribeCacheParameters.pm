
package Aws::ElastiCache::DescribeCacheParameters {
  use Moose;
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has Source => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::CacheParameterGroupDetails');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheParametersResult');
}
1;
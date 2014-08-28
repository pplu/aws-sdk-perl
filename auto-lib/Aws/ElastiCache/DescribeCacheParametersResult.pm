
package Aws::ElastiCache::DescribeCacheParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheNodeTypeSpecificParameters => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheNodeTypeSpecificParameter]', traits => ['Unwrapped'], xmlname => 'CacheNodeTypeSpecificParameter');
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::Parameter]', traits => ['Unwrapped'], xmlname => 'Parameter');

}
1;
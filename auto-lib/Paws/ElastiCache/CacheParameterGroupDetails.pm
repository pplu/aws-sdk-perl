
package Paws::ElastiCache::CacheParameterGroupDetails {
  use Moose;
  with 'Paws::API::ResultParser';
  has CacheNodeTypeSpecificParameters => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::CacheNodeTypeSpecificParameter]');
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::Parameter]');

}
1;
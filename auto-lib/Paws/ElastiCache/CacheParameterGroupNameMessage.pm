
package Paws::ElastiCache::CacheParameterGroupNameMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');

}
1;
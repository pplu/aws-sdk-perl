
package Aws::ElastiCache::ReservedCacheNodeMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedCacheNodes => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ReservedCacheNode]');

}
1;
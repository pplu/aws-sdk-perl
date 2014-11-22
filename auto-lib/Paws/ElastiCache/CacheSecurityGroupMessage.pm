
package Paws::ElastiCache::CacheSecurityGroupMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has CacheSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::CacheSecurityGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;
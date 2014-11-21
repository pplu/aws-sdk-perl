
package Aws::ElastiCache::CacheSecurityGroupMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheSecurityGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;
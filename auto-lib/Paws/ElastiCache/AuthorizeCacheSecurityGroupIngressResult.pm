
package Paws::ElastiCache::AuthorizeCacheSecurityGroupIngressResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has CacheSecurityGroup => (is => 'ro', isa => 'Paws::ElastiCache::CacheSecurityGroup');

}
1;
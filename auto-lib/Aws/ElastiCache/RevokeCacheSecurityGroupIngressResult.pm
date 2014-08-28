
package Aws::ElastiCache::RevokeCacheSecurityGroupIngressResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSecurityGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheSecurityGroup');

}
1;
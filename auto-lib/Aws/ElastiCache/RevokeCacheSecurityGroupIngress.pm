
package Aws::ElastiCache::RevokeCacheSecurityGroupIngress {
  use Moose;
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeCacheSecurityGroupIngress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::RevokeCacheSecurityGroupIngressResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeCacheSecurityGroupIngressResult');
}
1;

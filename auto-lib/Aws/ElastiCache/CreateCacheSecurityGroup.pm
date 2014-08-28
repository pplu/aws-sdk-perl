
package Aws::ElastiCache::CreateCacheSecurityGroup {
  use Moose;
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheSecurityGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::CreateCacheSecurityGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheSecurityGroupResult');
}
1;
  
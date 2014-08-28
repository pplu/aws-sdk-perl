
package Aws::ElastiCache::CreateCacheSubnetGroup {
  use Moose;
  has CacheSubnetGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SubnetIdentifier' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheSubnetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::CreateCacheSubnetGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheSubnetGroupResult');
}
1;

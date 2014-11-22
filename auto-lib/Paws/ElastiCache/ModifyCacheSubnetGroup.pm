
package Paws::ElastiCache::ModifyCacheSubnetGroup {
  use Moose;
  has CacheSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCacheSubnetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::ModifyCacheSubnetGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCacheSubnetGroupResult');
}
1;

package Aws::ElastiCache::ModifyCacheParameterGroup {
  use Moose;
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ParameterNameValues => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ParameterNameValue]', traits => ['NameInRequest'], request_name => 'ParameterNameValue' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCacheParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::ModifyCacheParameterGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCacheParameterGroupResult');
}
1;

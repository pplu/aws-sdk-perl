
package Aws::ElastiCache::ResetCacheParameterGroup {
  use Moose;
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ParameterNameValues => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ParameterNameValue]', traits => ['NameInRequest'], request_name => 'ParameterNameValue' , required => 1);
  has ResetAllParameters => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetCacheParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::ResetCacheParameterGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ResetCacheParameterGroupResult');
}
1;

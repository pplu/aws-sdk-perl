package Aws::ElastiCache::CacheNodeTypeSpecificParameter {
  use Moose;
  has AllowedValues => (is => 'ro', isa => 'Str');
  has CacheNodeTypeSpecificValues => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheNodeTypeSpecificValue]');
  has DataType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Bool');
  has MinimumEngineVersion => (is => 'ro', isa => 'Str');
  has ParameterName => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
}
1;

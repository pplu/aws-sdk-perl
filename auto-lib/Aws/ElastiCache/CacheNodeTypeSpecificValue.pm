package Aws::ElastiCache::CacheNodeTypeSpecificValue {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}
1

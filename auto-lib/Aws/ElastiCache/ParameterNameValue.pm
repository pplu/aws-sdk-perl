package Aws::ElastiCache::ParameterNameValue {
  use Moose;
  with ('AWS::API::ResultParser');
  has ParameterName => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
}
1

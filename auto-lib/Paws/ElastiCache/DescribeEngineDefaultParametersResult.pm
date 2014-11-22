
package Paws::ElastiCache::DescribeEngineDefaultParametersResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has EngineDefaults => (is => 'ro', isa => 'Paws::ElastiCache::EngineDefaults');

}
1;
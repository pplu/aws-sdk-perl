
package Aws::ElastiCache::DescribeEngineDefaultParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EngineDefaults => (is => 'ro', isa => 'Aws::ElastiCache::EngineDefaults');

}
1;
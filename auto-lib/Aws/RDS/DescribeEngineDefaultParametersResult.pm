
package Aws::RDS::DescribeEngineDefaultParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EngineDefaults => (is => 'ro', isa => 'Aws::RDS::EngineDefaults');

}
1;
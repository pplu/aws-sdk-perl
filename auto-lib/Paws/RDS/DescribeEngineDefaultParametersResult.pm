
package Paws::RDS::DescribeEngineDefaultParametersResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has EngineDefaults => (is => 'ro', isa => 'Paws::RDS::EngineDefaults');

}
1;
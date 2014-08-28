
package Aws::EMR::RunJobFlowResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has JobFlowId => (is => 'ro', isa => 'Str');

}
1;

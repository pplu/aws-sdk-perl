
package Aws::EMR::DescribeStepResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Step => (is => 'ro', isa => 'Aws::EMR::Step');

}
1;

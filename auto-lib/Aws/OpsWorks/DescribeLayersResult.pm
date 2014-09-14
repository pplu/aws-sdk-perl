
package Aws::OpsWorks::DescribeLayersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Layers => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Layer]');

}
1;

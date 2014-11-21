
package Aws::OpsWorks::DescribeVolumesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Volumes => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Volume]');

}
1;
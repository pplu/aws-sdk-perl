
package Aws::RedShift::DescribeDefaultClusterParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DefaultClusterParameters => (is => 'ro', isa => 'Aws::RedShift::DefaultClusterParameters');

}
1;
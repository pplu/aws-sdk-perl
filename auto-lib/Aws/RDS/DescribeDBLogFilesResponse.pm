
package Aws::RDS::DescribeDBLogFilesResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has DescribeDBLogFiles => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DescribeDBLogFilesDetails]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;
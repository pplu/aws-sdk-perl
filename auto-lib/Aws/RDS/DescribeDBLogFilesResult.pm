
package Aws::RDS::DescribeDBLogFilesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DescribeDBLogFiles => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DescribeDBLogFilesDetails]', traits => ['Unwrapped'], xmlname => 'DescribeDBLogFilesDetails');
  has Marker => (is => 'ro', isa => 'Str');

}
1;
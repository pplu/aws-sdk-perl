
package Paws::RDS::DescribeDBLogFilesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has DescribeDBLogFiles => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DescribeDBLogFilesDetails]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;
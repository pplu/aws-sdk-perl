
package Aws::RDS::DescribeDBEngineVersionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBEngineVersions => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBEngineVersion]', traits => ['Unwrapped'], xmlname => 'DBEngineVersions');
  has Marker => (is => 'ro', isa => 'Str');

}
1;
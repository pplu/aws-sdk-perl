
package Aws::RDS::DescribeDBSnapshotsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSnapshots => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSnapshot]', traits => ['Unwrapped'], xmlname => 'DBSnapshots');
  has Marker => (is => 'ro', isa => 'Str');

}
1;
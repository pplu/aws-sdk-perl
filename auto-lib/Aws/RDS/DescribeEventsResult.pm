
package Aws::RDS::DescribeEventsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Event]', traits => ['Unwrapped'], xmlname => 'Events');
  has Marker => (is => 'ro', isa => 'Str');

}
1;
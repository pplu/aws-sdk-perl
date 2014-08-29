
package Aws::RedShift::DescribeEventsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Event]', traits => ['Unwrapped'], xmlname => 'Events');
  has Marker => (is => 'ro', isa => 'Str');

}
1;
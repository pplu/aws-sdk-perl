
package Aws::RedShift::DescribeReservedNodesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedNodes => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ReservedNode]', traits => ['Unwrapped'], xmlname => 'ReservedNodes');

}
1;

package Aws::RedShift::ReservedNodesMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedNodes => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ReservedNode]');

}
1;
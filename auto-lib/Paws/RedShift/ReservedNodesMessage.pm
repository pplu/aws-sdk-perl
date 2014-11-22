
package Paws::RedShift::ReservedNodesMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedNodes => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ReservedNode]');

}
1;
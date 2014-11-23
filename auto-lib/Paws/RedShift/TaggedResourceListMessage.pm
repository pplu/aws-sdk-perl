
package Paws::RedShift::TaggedResourceListMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has TaggedResources => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::TaggedResource]');

}
1;
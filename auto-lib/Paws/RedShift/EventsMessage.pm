
package Paws::RedShift::EventsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Event]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;
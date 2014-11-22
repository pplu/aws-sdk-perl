
package Paws::RDS::EventsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Event]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;
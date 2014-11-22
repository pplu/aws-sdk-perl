
package Paws::ElastiCache::EventsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::Event]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;
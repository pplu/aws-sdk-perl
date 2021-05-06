
package Paws::ElastiCache::EventsMessage;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::Event]', request_name => 'Event', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::EventsMessage

=head1 ATTRIBUTES


=head2 Events => ArrayRef[L<Paws::ElastiCache::Event>]

A list of events. Each element in the list contains detailed
information about one event.


=head2 Marker => Str

Provides an identifier to allow retrieval of paginated results.


=head2 _request_id => Str


=cut


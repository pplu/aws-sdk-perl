
package Paws::Neptune::EventsMessage;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::Event]', request_name => 'Event', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::EventsMessage

=head1 ATTRIBUTES


=head2 Events => ArrayRef[L<Paws::Neptune::Event>]

A list of Event instances.


=head2 Marker => Str

An optional pagination token provided by a previous Events request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by C<MaxRecords> .


=head2 _request_id => Str


=cut


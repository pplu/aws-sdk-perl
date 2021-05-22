
package Paws::CloudWatchEvents::ListConnectionsResponse;
  use Moose;
  has Connections => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::Connection]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListConnectionsResponse

=head1 ATTRIBUTES


=head2 Connections => ArrayRef[L<Paws::CloudWatchEvents::Connection>]

An array of connections objects that include details about the
connections.


=head2 NextToken => Str

A token you can use in a subsequent request to retrieve the next set of
results.


=head2 _request_id => Str


=cut

1;
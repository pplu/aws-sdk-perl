
package Paws::Lightsail::GetRelationalDatabaseEventsResult;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );
  has RelationalDatabaseEvents => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::RelationalDatabaseEvent]', traits => ['NameInRequest'], request_name => 'relationalDatabaseEvents' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseEventsResult

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another
C<GetRelationalDatabaseEvents> request and specify the next page token
using the C<pageToken> parameter.


=head2 RelationalDatabaseEvents => ArrayRef[L<Paws::Lightsail::RelationalDatabaseEvent>]

An object describing the result of your get relational database events
request.


=head2 _request_id => Str


=cut

1;
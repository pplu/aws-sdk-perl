
package Paws::Lightsail::GetRelationalDatabaseSnapshotsResult;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );
  has RelationalDatabaseSnapshots => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::RelationalDatabaseSnapshot]', traits => ['NameInRequest'], request_name => 'relationalDatabaseSnapshots' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseSnapshotsResult

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another
C<GetRelationalDatabaseSnapshots> request and specify the next page
token using the C<pageToken> parameter.


=head2 RelationalDatabaseSnapshots => ArrayRef[L<Paws::Lightsail::RelationalDatabaseSnapshot>]

An object describing the result of your get relational database
snapshots request.


=head2 _request_id => Str


=cut

1;
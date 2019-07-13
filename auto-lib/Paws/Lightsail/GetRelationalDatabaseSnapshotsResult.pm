
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

A token used for advancing to the next page of results from your get
relational database snapshots request.


=head2 RelationalDatabaseSnapshots => ArrayRef[L<Paws::Lightsail::RelationalDatabaseSnapshot>]

An object describing the result of your get relational database
snapshots request.


=head2 _request_id => Str


=cut

1;
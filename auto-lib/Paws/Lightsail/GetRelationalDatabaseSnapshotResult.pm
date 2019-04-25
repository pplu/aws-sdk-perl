
package Paws::Lightsail::GetRelationalDatabaseSnapshotResult;
  use Moose;
  has RelationalDatabaseSnapshot => (is => 'ro', isa => 'Paws::Lightsail::RelationalDatabaseSnapshot', traits => ['NameInRequest'], request_name => 'relationalDatabaseSnapshot' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseSnapshotResult

=head1 ATTRIBUTES


=head2 RelationalDatabaseSnapshot => L<Paws::Lightsail::RelationalDatabaseSnapshot>

An object describing the specified database snapshot.


=head2 _request_id => Str


=cut

1;
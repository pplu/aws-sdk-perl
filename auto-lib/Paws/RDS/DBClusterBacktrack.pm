
package Paws::RDS::DBClusterBacktrack;
  use Moose;
  has BacktrackedFrom => (is => 'ro', isa => 'Str');
  has BacktrackIdentifier => (is => 'ro', isa => 'Str');
  has BacktrackRequestCreationTime => (is => 'ro', isa => 'Str');
  has BacktrackTo => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBClusterBacktrack

=head1 ATTRIBUTES


=head2 BacktrackedFrom => Str

The timestamp of the time from which the DB cluster was backtracked.


=head2 BacktrackIdentifier => Str

Contains the backtrack identifier.


=head2 BacktrackRequestCreationTime => Str

The timestamp of the time at which the backtrack was requested.


=head2 BacktrackTo => Str

The timestamp of the time to which the DB cluster was backtracked.


=head2 DBClusterIdentifier => Str

Contains a user-supplied DB cluster identifier. This identifier is the
unique key that identifies a DB cluster.


=head2 Status => Str

The status of the backtrack. This property returns one of the following
values:

=over

=item *

C<applying> - The backtrack is currently being applied to or rolled
back from the DB cluster.

=item *

C<completed> - The backtrack has successfully been applied to or rolled
back from the DB cluster.

=item *

C<failed> - An error occurred while the backtrack was applied to or
rolled back from the DB cluster.

=item *

C<pending> - The backtrack is currently pending application to or
rollback from the DB cluster.

=back



=head2 _request_id => Str


=cut


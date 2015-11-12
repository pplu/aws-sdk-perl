
package Paws::RDS::DBClusterParameterGroupNameMessage;
  use Moose;
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBClusterParameterGroupNameMessage

=head1 ATTRIBUTES


=head2 DBClusterParameterGroupName => Str

  The name of the DB cluster parameter group.

Constraints:

=over

=item * Must be 1 to 255 alphanumeric characters

=item * First character must be a letter

=item * Cannot end with a hyphen or contain two consecutive hyphens

=back

This value is stored as a lowercase string.


=cut


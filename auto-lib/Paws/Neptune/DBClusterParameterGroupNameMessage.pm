
package Paws::Neptune::DBClusterParameterGroupNameMessage;
  use Moose;
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DBClusterParameterGroupNameMessage

=head1 ATTRIBUTES


=head2 DBClusterParameterGroupName => Str

The name of the DB cluster parameter group.

Constraints:

=over

=item *

Must be 1 to 255 letters or numbers.

=item *

First character must be a letter

=item *

Cannot end with a hyphen or contain two consecutive hyphens

=back

This value is stored as a lowercase string.


=head2 _request_id => Str


=cut


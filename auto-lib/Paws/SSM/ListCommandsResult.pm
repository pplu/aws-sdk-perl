
package Paws::SSM::ListCommandsResult;
  use Moose;
  has Commands => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Command]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListCommandsResult

=head1 ATTRIBUTES


=head2 Commands => ArrayRef[L<Paws::SSM::Command>]

(Optional) The list of commands requested by the user.


=head2 NextToken => Str

(Optional) The token for the next set of items to return. (You received
this token from a previous call.)


=head2 _request_id => Str


=cut

1;
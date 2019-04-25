
package Paws::Chime::BatchSuspendUserResponse;
  use Moose;
  has UserErrors => (is => 'ro', isa => 'ArrayRef[Paws::Chime::UserError]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::BatchSuspendUserResponse

=head1 ATTRIBUTES


=head2 UserErrors => ArrayRef[L<Paws::Chime::UserError>]

If the BatchSuspendUser action fails for one or more of the user IDs in
the request, a list of the user IDs is returned, along with error codes
and error messages.


=head2 _request_id => Str


=cut


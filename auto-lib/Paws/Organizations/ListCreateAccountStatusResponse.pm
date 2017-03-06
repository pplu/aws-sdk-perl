
package Paws::Organizations::ListCreateAccountStatusResponse;
  use Moose;
  has CreateAccountStatuses => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::CreateAccountStatus]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListCreateAccountStatusResponse

=head1 ATTRIBUTES


=head2 CreateAccountStatuses => ArrayRef[L<Paws::Organizations::CreateAccountStatus>]

A list of objects with details about the requests. Certain elements,
such as the accountId number, are present in the output only after the
account has been successfully created.


=head2 NextToken => Str

If present, this value indicates that there is more output available
than is included in the current response. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
get the next part of the output. You should repeat this until the
C<NextToken> response element comes back as C<null>.


=head2 _request_id => Str


=cut

1;
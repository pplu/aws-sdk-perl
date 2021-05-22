
package Paws::Organizations::ListDelegatedAdministratorsResponse;
  use Moose;
  has DelegatedAdministrators => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::DelegatedAdministrator]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListDelegatedAdministratorsResponse

=head1 ATTRIBUTES


=head2 DelegatedAdministrators => ArrayRef[L<Paws::Organizations::DelegatedAdministrator>]

The list of delegated administrators in your organization.


=head2 NextToken => Str

If present, indicates that more output is available than is included in
the current response. Use this value in the C<NextToken> request
parameter in a subsequent call to the operation to get the next part of
the output. You should repeat this until the C<NextToken> response
element comes back as C<null>.


=head2 _request_id => Str


=cut

1;
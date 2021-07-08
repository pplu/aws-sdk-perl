
package Paws::Macie2::GetAdministratorAccountResponse;
  use Moose;
  has Administrator => (is => 'ro', isa => 'Paws::Macie2::Invitation', traits => ['NameInRequest'], request_name => 'administrator');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetAdministratorAccountResponse

=head1 ATTRIBUTES


=head2 Administrator => L<Paws::Macie2::Invitation>

The Amazon Web Services account ID for the administrator account. If
the accounts are associated by a Macie membership invitation, this
object also provides details about the invitation that was sent to
establish the relationship between the accounts.


=head2 _request_id => Str


=cut



package Paws::Macie2::GetMasterAccountResponse;
  use Moose;
  has Master => (is => 'ro', isa => 'Paws::Macie2::Invitation', traits => ['NameInRequest'], request_name => 'master');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetMasterAccountResponse

=head1 ATTRIBUTES


=head2 Master => L<Paws::Macie2::Invitation>

(Deprecated) The AWS account ID for the administrator account. If the
accounts are associated by a Macie membership invitation, this object
also provides details about the invitation that was sent to establish
the relationship between the accounts.


=head2 _request_id => Str


=cut


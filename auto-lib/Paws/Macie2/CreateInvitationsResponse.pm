
package Paws::Macie2::CreateInvitationsResponse;
  use Moose;
  has UnprocessedAccounts => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::UnprocessedAccount]', traits => ['NameInRequest'], request_name => 'unprocessedAccounts');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::CreateInvitationsResponse

=head1 ATTRIBUTES


=head2 UnprocessedAccounts => ArrayRef[L<Paws::Macie2::UnprocessedAccount>]

An array of objects, one for each account whose invitation hasn't been
processed. Each object identifies the account and explains why the
invitation hasn't been processed for the account.


=head2 _request_id => Str


=cut


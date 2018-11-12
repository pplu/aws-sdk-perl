
package Paws::Macie::ListMemberAccountsResult;
  use Moose;
  has MemberAccounts => (is => 'ro', isa => 'ArrayRef[Paws::Macie::MemberAccount]', traits => ['NameInRequest'], request_name => 'memberAccounts' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Macie::ListMemberAccountsResult

=head1 ATTRIBUTES


=head2 MemberAccounts => ArrayRef[L<Paws::Macie::MemberAccount>]

A list of the Amazon Macie member accounts returned by the action. The
current master account is also included in this list.


=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the nextToken parameter in a subsequent pagination request. If there is
no more data to be listed, this parameter is set to null.


=head2 _request_id => Str


=cut

1;
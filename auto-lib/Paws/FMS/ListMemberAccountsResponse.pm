
package Paws::FMS::ListMemberAccountsResponse;
  use Moose;
  has MemberAccounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::ListMemberAccountsResponse

=head1 ATTRIBUTES


=head2 MemberAccounts => ArrayRef[Str|Undef]

An array of account IDs.


=head2 NextToken => Str

If you have more member account IDs than the number that you specified
for C<MaxResults> in the request, the response includes a C<NextToken>
value. To list more IDs, submit another C<ListMemberAccounts> request,
and specify the C<NextToken> value from the response in the
C<NextToken> value in the next request.


=head2 _request_id => Str


=cut

1;
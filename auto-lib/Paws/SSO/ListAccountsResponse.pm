
package Paws::SSO::ListAccountsResponse;
  use Moose;
  has AccountList => (is => 'ro', isa => 'ArrayRef[Paws::SSO::AccountInfo]', traits => ['NameInRequest'], request_name => 'accountList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSO::ListAccountsResponse

=head1 ATTRIBUTES


=head2 AccountList => ArrayRef[L<Paws::SSO::AccountInfo>]

A paginated response with the list of account information and the next
token if more results are available.


=head2 NextToken => Str

The page token client that is used to retrieve the list of accounts.


=head2 _request_id => Str


=cut


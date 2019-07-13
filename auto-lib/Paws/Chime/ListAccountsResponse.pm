
package Paws::Chime::ListAccountsResponse;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Paws::Chime::Account]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListAccountsResponse

=head1 ATTRIBUTES


=head2 Accounts => ArrayRef[L<Paws::Chime::Account>]

List of Amazon Chime accounts and account details.


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 _request_id => Str


=cut


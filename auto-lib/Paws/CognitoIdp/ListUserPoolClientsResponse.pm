
package Paws::CognitoIdp::ListUserPoolClientsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has UserPoolClients => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::UserPoolClientDescription]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUserPoolClientsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 UserPoolClients => ArrayRef[L<Paws::CognitoIdp::UserPoolClientDescription>]

The user pool clients in the response that lists user pool clients.


=head2 _request_id => Str


=cut

1;
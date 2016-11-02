
package Paws::CognitoIdp::UpdateUserPoolClientResponse;
  use Moose;
  has UserPoolClient => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolClientType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateUserPoolClientResponse

=head1 ATTRIBUTES


=head2 UserPoolClient => L<Paws::CognitoIdp::UserPoolClientType>

The user pool client value from the response from the server when an
update user pool client request is made.


=head2 _request_id => Str


=cut

1;
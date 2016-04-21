
package Paws::CognitoIdp::UpdateUserPoolClientResponse;
  use Moose;
  has UserPoolClient => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolClientType');


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateUserPoolClientResponse

=head1 ATTRIBUTES


=head2 UserPoolClient => L<Paws::CognitoIdp::UserPoolClientType>

The user pool client value from the response from the server when an
update user pool client request is made.




=cut

1;
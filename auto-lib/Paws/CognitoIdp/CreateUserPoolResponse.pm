
package Paws::CognitoIdp::CreateUserPoolResponse;
  use Moose;
  has UserPool => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateUserPoolResponse

=head1 ATTRIBUTES


=head2 UserPool => L<Paws::CognitoIdp::UserPoolType>

A container for the user pool details.




=cut

1;
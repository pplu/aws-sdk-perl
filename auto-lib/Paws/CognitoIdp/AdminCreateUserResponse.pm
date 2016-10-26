
package Paws::CognitoIdp::AdminCreateUserResponse;
  use Moose;
  has User => (is => 'ro', isa => 'Paws::CognitoIdp::UserType');


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminCreateUserResponse

=head1 ATTRIBUTES


=head2 User => L<Paws::CognitoIdp::UserType>

The user returned in the request to create a new user.




=cut

1;
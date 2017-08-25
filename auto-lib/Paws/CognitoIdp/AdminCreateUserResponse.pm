
package Paws::CognitoIdp::AdminCreateUserResponse;
  use Moose;
  has User => (is => 'ro', isa => 'Paws::CognitoIdp::UserType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminCreateUserResponse

=head1 ATTRIBUTES


=head2 User => L<Paws::CognitoIdp::UserType>

The newly created user.


=head2 _request_id => Str


=cut

1;
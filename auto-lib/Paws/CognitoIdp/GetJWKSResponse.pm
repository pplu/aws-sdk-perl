
package Paws::CognitoIdp::GetJWKSResponse;
  use Moose;
  has Keys => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::KeyType]', traits => ['Unwrapped'], xmlname => 'keys' );


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetJWKSResponse

=head1 ATTRIBUTES


=head2 Keys => ArrayRef[L<Paws::CognitoIdp::KeyType>]

The keys in a get JSON Web keys response.




=cut

1;
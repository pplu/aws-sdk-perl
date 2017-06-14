
package Paws::CognitoIdp::CreateIdentityProviderResponse;
  use Moose;
  has IdentityProvider => (is => 'ro', isa => 'Paws::CognitoIdp::IdentityProviderType', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateIdentityProviderResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityProvider => L<Paws::CognitoIdp::IdentityProviderType>

The newly created identity provider object.


=head2 _request_id => Str


=cut

1;
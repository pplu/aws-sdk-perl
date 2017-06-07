
package Paws::CognitoIdp::DescribeIdentityProviderResponse;
  use Moose;
  has IdentityProvider => (is => 'ro', isa => 'Paws::CognitoIdp::IdentityProviderType', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::DescribeIdentityProviderResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityProvider => L<Paws::CognitoIdp::IdentityProviderType>

The identity provider that was deleted.


=head2 _request_id => Str


=cut

1;
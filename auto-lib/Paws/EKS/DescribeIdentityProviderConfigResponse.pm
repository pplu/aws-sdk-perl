
package Paws::EKS::DescribeIdentityProviderConfigResponse;
  use Moose;
  has IdentityProviderConfig => (is => 'ro', isa => 'Paws::EKS::IdentityProviderConfigResponse', traits => ['NameInRequest'], request_name => 'identityProviderConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DescribeIdentityProviderConfigResponse

=head1 ATTRIBUTES


=head2 IdentityProviderConfig => L<Paws::EKS::IdentityProviderConfigResponse>

The object that represents an OpenID Connect (OIDC) identity provider
configuration.


=head2 _request_id => Str


=cut



package Paws::EKS::ListIdentityProviderConfigsResponse;
  use Moose;
  has IdentityProviderConfigs => (is => 'ro', isa => 'ArrayRef[Paws::EKS::IdentityProviderConfig]', traits => ['NameInRequest'], request_name => 'identityProviderConfigs');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListIdentityProviderConfigsResponse

=head1 ATTRIBUTES


=head2 IdentityProviderConfigs => ArrayRef[L<Paws::EKS::IdentityProviderConfig>]

The identity provider configurations for the cluster.


=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListIdentityProviderConfigsResponse> where C<maxResults> was used and
the results exceeded the value of that parameter. Pagination continues
from the end of the previous results that returned the C<nextToken>
value.


=head2 _request_id => Str


=cut


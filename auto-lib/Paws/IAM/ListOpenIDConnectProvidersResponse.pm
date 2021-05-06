
package Paws::IAM::ListOpenIDConnectProvidersResponse;
  use Moose;
  has OpenIDConnectProviderList => (is => 'ro', isa => 'ArrayRef[Paws::IAM::OpenIDConnectProviderListEntry]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListOpenIDConnectProvidersResponse

=head1 ATTRIBUTES


=head2 OpenIDConnectProviderList => ArrayRef[L<Paws::IAM::OpenIDConnectProviderListEntry>]

The list of IAM OIDC provider resource objects defined in the AWS
account.


=head2 _request_id => Str


=cut


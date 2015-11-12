
package Paws::IAM::ListOpenIDConnectProvidersResponse;
  use Moose;
  has OpenIDConnectProviderList => (is => 'ro', isa => 'ArrayRef[Paws::IAM::OpenIDConnectProviderListEntry]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListOpenIDConnectProvidersResponse

=head1 ATTRIBUTES


=head2 OpenIDConnectProviderList => ArrayRef[L<Paws::IAM::OpenIDConnectProviderListEntry>]

  The list of IAM OpenID Connect providers in the AWS account.


=cut


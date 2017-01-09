
package Paws::IAM::CreateOpenIDConnectProviderResponse;
  use Moose;
  has OpenIDConnectProviderArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateOpenIDConnectProviderResponse

=head1 ATTRIBUTES


=head2 OpenIDConnectProviderArn => Str

The Amazon Resource Name (ARN) of the new IAM OpenID Connect provider
that is created. For more information, see
OpenIDConnectProviderListEntry.


=head2 _request_id => Str


=cut



package Paws::IAM::CreateOpenIDConnectProviderResponse;
  use Moose;
  has OpenIDConnectProviderArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Tag]');

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


=head2 Tags => ArrayRef[L<Paws::IAM::Tag>]

A list of tags that are attached to the new IAM OIDC provider. The
returned list of tags is sorted by tag key. For more information about
tagging, see Tagging IAM resources
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
I<IAM User Guide>.


=head2 _request_id => Str


=cut


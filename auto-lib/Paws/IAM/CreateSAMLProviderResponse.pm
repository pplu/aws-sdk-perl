
package Paws::IAM::CreateSAMLProviderResponse;
  use Moose;
  has SAMLProviderArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateSAMLProviderResponse

=head1 ATTRIBUTES


=head2 SAMLProviderArn => Str

The Amazon Resource Name (ARN) of the new SAML provider resource in
IAM.


=head2 Tags => ArrayRef[L<Paws::IAM::Tag>]

A list of tags that are attached to the new IAM SAML provider. The
returned list of tags is sorted by tag key. For more information about
tagging, see Tagging IAM resources
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
I<IAM User Guide>.


=head2 _request_id => Str


=cut


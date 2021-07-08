
package Paws::IAM::GetSAMLProviderResponse;
  use Moose;
  has CreateDate => (is => 'ro', isa => 'Str');
  has SAMLMetadataDocument => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Tag]');
  has ValidUntil => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetSAMLProviderResponse

=head1 ATTRIBUTES


=head2 CreateDate => Str

The date and time when the SAML provider was created.


=head2 SAMLMetadataDocument => Str

The XML metadata document that includes information about an identity
provider.


=head2 Tags => ArrayRef[L<Paws::IAM::Tag>]

A list of tags that are attached to the specified IAM SAML provider.
The returned list of tags is sorted by tag key. For more information
about tagging, see Tagging IAM resources
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
I<IAM User Guide>.


=head2 ValidUntil => Str

The expiration date and time for the SAML provider.


=head2 _request_id => Str


=cut



package Paws::IAM::GetSAMLProviderResponse;
  use Moose;
  has CreateDate => (is => 'ro', isa => 'Paws::API::TimeStamp');
  has SAMLMetadataDocument => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Paws::API::TimeStamp');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetSAMLProviderResponse

=head1 ATTRIBUTES


=head2 CreateDate => L<Paws::API::TimeStamp>

The date and time when the SAML provider was created.



=head2 SAMLMetadataDocument => Str

The XML metadata document that includes information about an identity
provider.



=head2 ValidUntil => L<Paws::API::TimeStamp>

The expiration date and time for the SAML provider.




=cut


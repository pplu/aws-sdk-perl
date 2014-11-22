
package Paws::IAM::GetSAMLProviderResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has CreateDate => (is => 'ro', isa => 'Str');
  has SAMLMetadataDocument => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');

}
1;

package Aws::IAM::GetSAMLProviderResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CreateDate => (is => 'ro', isa => 'Str');
  has SAMLMetadataDocument => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');

}
1;
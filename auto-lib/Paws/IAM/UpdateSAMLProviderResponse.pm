
package Paws::IAM::UpdateSAMLProviderResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has SAMLProviderArn => (is => 'ro', isa => 'Str');

}
1;
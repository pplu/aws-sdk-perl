
package Paws::IAM::CreateSAMLProviderResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has SAMLProviderArn => (is => 'ro', isa => 'Str');

}
1;
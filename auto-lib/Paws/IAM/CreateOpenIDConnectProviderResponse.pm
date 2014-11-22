
package Paws::IAM::CreateOpenIDConnectProviderResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has OpenIDConnectProviderArn => (is => 'ro', isa => 'Str');

}
1;
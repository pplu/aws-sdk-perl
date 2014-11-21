
package Aws::IAM::CreateOpenIDConnectProviderResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has OpenIDConnectProviderArn => (is => 'ro', isa => 'Str');

}
1;

package Aws::IAM::UpdateSAMLProviderResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has SAMLProviderArn => (is => 'ro', isa => 'Str');

}
1;
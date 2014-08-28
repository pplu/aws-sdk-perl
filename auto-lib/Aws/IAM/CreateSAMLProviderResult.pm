
package Aws::IAM::CreateSAMLProviderResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SAMLProviderArn => (is => 'ro', isa => 'Str');

}
1;
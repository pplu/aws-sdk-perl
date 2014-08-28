
package Aws::CognitoIdentity::CreateIdentityPoolResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AllowUnauthenticatedIdentities => (is => 'ro', isa => 'Bool', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityPoolName => (is => 'ro', isa => 'Str', required => 1);
  has SupportedLoginProviders => (is => 'ro', isa => 'Aws::CognitoIdentity::IdentityProviders');

}
1;

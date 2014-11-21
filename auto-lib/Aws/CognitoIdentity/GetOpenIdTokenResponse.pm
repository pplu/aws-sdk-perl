
package Aws::CognitoIdentity::GetOpenIdTokenResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has IdentityId => (is => 'ro', isa => 'Str');
  has Token => (is => 'ro', isa => 'Str');

}
1;
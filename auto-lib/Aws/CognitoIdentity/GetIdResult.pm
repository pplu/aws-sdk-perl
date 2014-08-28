
package Aws::CognitoIdentity::GetIdResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IdentityId => (is => 'ro', isa => 'Str');

}
1;

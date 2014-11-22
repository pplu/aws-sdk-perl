
package Paws::CognitoIdentity::GetOpenIdTokenResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has IdentityId => (is => 'ro', isa => 'Str');
  has Token => (is => 'ro', isa => 'Str');

}
1;
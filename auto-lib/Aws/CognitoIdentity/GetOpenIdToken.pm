
package Aws::CognitoIdentity::GetOpenIdToken {
  use Moose;
  has IdentityId => (is => 'ro', isa => 'Str', required => 1);
  has Logins => (is => 'ro', isa => 'Aws::CognitoIdentity::LoginsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOpenIdToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CognitoIdentity::GetOpenIdTokenResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

package Paws::CognitoIdentity::GetOpenIdTokenForDeveloperIdentity {
  use Moose;
  has IdentityId => (is => 'ro', isa => 'Str');
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has Logins => (is => 'ro', isa => 'Paws::CognitoIdentity::LoginsMap', required => 1);
  has TokenDuration => (is => 'ro', isa => 'Num');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOpenIdTokenForDeveloperIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdentity::GetOpenIdTokenForDeveloperIdentityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
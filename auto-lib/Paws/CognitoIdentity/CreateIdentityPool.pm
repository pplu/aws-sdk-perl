
package Paws::CognitoIdentity::CreateIdentityPool {
  use Moose;
  has AllowUnauthenticatedIdentities => (is => 'ro', isa => 'Bool', required => 1);
  has DeveloperProviderName => (is => 'ro', isa => 'Str');
  has IdentityPoolName => (is => 'ro', isa => 'Str', required => 1);
  has OpenIdConnectProviderARNs => (is => 'ro', isa => 'ArrayRef[Str]');
  has SupportedLoginProviders => (is => 'ro', isa => 'Paws::CognitoIdentity::IdentityProviders');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIdentityPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdentity::IdentityPool');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
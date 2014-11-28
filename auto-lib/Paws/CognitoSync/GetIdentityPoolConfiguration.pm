
package Paws::CognitoSync::GetIdentityPoolConfiguration {
  use Moose;
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityPoolConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoSync::GetIdentityPoolConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetIdentityPoolConfigurationResult');
}
1;
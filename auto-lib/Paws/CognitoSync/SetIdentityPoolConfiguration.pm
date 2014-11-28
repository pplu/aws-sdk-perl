
package Paws::CognitoSync::SetIdentityPoolConfiguration {
  use Moose;
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has PushSync => (is => 'ro', isa => 'Paws::CognitoSync::PushSync');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityPoolConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoSync::SetIdentityPoolConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityPoolConfigurationResult');
}
1;
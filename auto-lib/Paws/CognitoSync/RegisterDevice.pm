
package Paws::CognitoSync::RegisterDevice {
  use Moose;
  has IdentityId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has Platform => (is => 'ro', isa => 'Str', required => 1);
  has Token => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterDevice');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoSync::RegisterDeviceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterDeviceResult');
}
1;
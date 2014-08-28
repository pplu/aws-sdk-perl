
package Aws::StorageGateway::UpdateChapCredentials {
  use Moose;
  has InitiatorName => (is => 'ro', isa => 'Str', required => 1);
  has SecretToAuthenticateInitiator => (is => 'ro', isa => 'Str', required => 1);
  has SecretToAuthenticateTarget => (is => 'ro', isa => 'Str');
  has TargetARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChapCredentials');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::UpdateChapCredentialsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
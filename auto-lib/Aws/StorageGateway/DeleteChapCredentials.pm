
package Aws::StorageGateway::DeleteChapCredentials {
  use Moose;
  has InitiatorName => (is => 'ro', isa => 'Str', required => 1);
  has TargetARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteChapCredentials');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DeleteChapCredentialsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;

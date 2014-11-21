
package Aws::StorageGateway::UpdateGatewayInformation {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has GatewayName => (is => 'ro', isa => 'Str');
  has GatewayTimezone => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGatewayInformation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::UpdateGatewayInformationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
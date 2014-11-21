
package Aws::StorageGateway::ActivateGateway {
  use Moose;
  has ActivationKey => (is => 'ro', isa => 'Str', required => 1);
  has GatewayName => (is => 'ro', isa => 'Str', required => 1);
  has GatewayRegion => (is => 'ro', isa => 'Str', required => 1);
  has GatewayTimezone => (is => 'ro', isa => 'Str', required => 1);
  has GatewayType => (is => 'ro', isa => 'Str');
  has MediumChangerType => (is => 'ro', isa => 'Str');
  has TapeDriveType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ActivateGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::ActivateGatewayOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
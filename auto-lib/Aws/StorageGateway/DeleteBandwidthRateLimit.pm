
package Aws::StorageGateway::DeleteBandwidthRateLimit {
  use Moose;
  has BandwidthType => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBandwidthRateLimit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DeleteBandwidthRateLimitOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
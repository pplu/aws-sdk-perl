
package Paws::StorageGateway::UpdateBandwidthRateLimit {
  use Moose;
  has AverageDownloadRateLimitInBitsPerSec => (is => 'ro', isa => 'Num');
  has AverageUploadRateLimitInBitsPerSec => (is => 'ro', isa => 'Num');
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBandwidthRateLimit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::UpdateBandwidthRateLimitOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
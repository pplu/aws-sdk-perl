
package Aws::StorageGateway::ListVolumesOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has VolumeInfos => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::VolumeInfo]');

}
1;

package Aws::StorageGateway::DeleteVolumeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has VolumeARN => (is => 'ro', isa => 'Str');

}
1;

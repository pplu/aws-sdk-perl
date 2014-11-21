
package Aws::StorageGateway::DeleteVolumeOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has VolumeARN => (is => 'ro', isa => 'Str');

}
1;
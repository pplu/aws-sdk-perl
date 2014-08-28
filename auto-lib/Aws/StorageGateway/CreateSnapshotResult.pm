
package Aws::StorageGateway::CreateSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');

}
1;

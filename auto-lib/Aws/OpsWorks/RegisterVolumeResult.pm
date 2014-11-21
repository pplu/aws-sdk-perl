
package Aws::OpsWorks::RegisterVolumeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has VolumeId => (is => 'ro', isa => 'Str');

}
1;
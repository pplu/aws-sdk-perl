
package Paws::OpsWorks::RegisterVolumeResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has VolumeId => (is => 'ro', isa => 'Str');

}
1;
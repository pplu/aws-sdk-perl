
package Paws::OpsWorks::DescribeVolumesResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Volumes => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::Volume]');

}
1;
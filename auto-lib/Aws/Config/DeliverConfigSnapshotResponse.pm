
package Aws::Config::DeliverConfigSnapshotResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has configSnapshotId => (is => 'ro', isa => 'Str');

}
1;
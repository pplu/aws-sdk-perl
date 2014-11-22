
package Paws::Config::DeliverConfigSnapshotResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has configSnapshotId => (is => 'ro', isa => 'Str');

}
1;
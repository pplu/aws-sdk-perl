
package Paws::RDS::DBSnapshotMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has DBSnapshots => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBSnapshot]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;
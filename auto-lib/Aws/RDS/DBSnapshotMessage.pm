
package Aws::RDS::DBSnapshotMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSnapshots => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSnapshot]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;
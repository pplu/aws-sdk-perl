
package Aws::RedShift::EnableSnapshotCopy {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DestinationRegion => (is => 'ro', isa => 'Str', required => 1);
  has RetentionPeriod => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableSnapshotCopy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::EnableSnapshotCopyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'EnableSnapshotCopyResult');
}
1;

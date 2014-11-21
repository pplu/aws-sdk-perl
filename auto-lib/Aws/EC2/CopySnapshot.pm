
package Aws::EC2::CopySnapshot {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DestinationRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationRegion' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has PresignedUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'presignedUrl' );
  has SourceRegion => (is => 'ro', isa => 'Str', required => 1);
  has SourceSnapshotId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopySnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CopySnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
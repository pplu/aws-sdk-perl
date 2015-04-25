
package Paws::EC2::ImportSnapshotResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', traits => ['Unwrapped',]);
  has ImportTaskId => (is => 'ro', isa => 'Str', xmlname => 'importTaskId', traits => ['Unwrapped',]);
  has SnapshotTaskDetail => (is => 'ro', isa => 'Paws::EC2::SnapshotTaskDetail', xmlname => 'snapshotTaskDetail', traits => ['Unwrapped',]);

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportSnapshotResult

=head1 ATTRIBUTES

=head2 Description => Str

  

Description of the import snapshot task.









=head2 ImportTaskId => Str

  

Task ID of the ImportSnapshot task.









=head2 SnapshotTaskDetail => Paws::EC2::SnapshotTaskDetail

  


=cut


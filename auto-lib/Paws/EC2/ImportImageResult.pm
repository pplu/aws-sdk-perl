
package Paws::EC2::ImportImageResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Architecture => (is => 'ro', isa => 'Str', xmlname => 'architecture', traits => ['Unwrapped',]);
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', traits => ['Unwrapped',]);
  has Hypervisor => (is => 'ro', isa => 'Str', xmlname => 'hypervisor', traits => ['Unwrapped',]);
  has ImageId => (is => 'ro', isa => 'Str', xmlname => 'imageId', traits => ['Unwrapped',]);
  has ImportTaskId => (is => 'ro', isa => 'Str', xmlname => 'importTaskId', traits => ['Unwrapped',]);
  has LicenseType => (is => 'ro', isa => 'Str', xmlname => 'licenseType', traits => ['Unwrapped',]);
  has Platform => (is => 'ro', isa => 'Str', xmlname => 'platform', traits => ['Unwrapped',]);
  has Progress => (is => 'ro', isa => 'Str', xmlname => 'progress', traits => ['Unwrapped',]);
  has SnapshotDetails => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SnapshotDetail]', xmlname => 'snapshotDetailSet', traits => ['Unwrapped',]);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', traits => ['Unwrapped',]);
  has StatusMessage => (is => 'ro', isa => 'Str', xmlname => 'statusMessage', traits => ['Unwrapped',]);

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportImageResult

=head1 ATTRIBUTES

=head2 Architecture => Str

  

Architecture of the virtual machine being imported.









=head2 Description => Str

  

A description of the import task.









=head2 Hypervisor => Str

  

Target hypervisor of the import task.









=head2 ImageId => Str

  

The Amazon Machine Image (AMI) ID created by the import task.









=head2 ImportTaskId => Str

  

The task id of the ImportImage task.









=head2 LicenseType => Str

  

License type of the virtual machine being imported.









=head2 Platform => Str

  

Operating system of the VM being imported.









=head2 Progress => Str

  

The task's progress.









=head2 SnapshotDetails => ArrayRef[Paws::EC2::SnapshotDetail]

  
=head2 Status => Str

  

A brief status of the task.









=head2 StatusMessage => Str

  

A detailed status message of the import task.











=cut


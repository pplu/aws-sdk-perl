
package Paws::EC2::ImportImageResult;
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str', request_name => 'architecture', traits => ['NameInRequest',]);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest',]);
  has Hypervisor => (is => 'ro', isa => 'Str', request_name => 'hypervisor', traits => ['NameInRequest',]);
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest',]);
  has ImportTaskId => (is => 'ro', isa => 'Str', request_name => 'importTaskId', traits => ['NameInRequest',]);
  has LicenseType => (is => 'ro', isa => 'Str', request_name => 'licenseType', traits => ['NameInRequest',]);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest',]);
  has Progress => (is => 'ro', isa => 'Str', request_name => 'progress', traits => ['NameInRequest',]);
  has SnapshotDetails => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SnapshotDetail]', request_name => 'snapshotDetailSet', traits => ['NameInRequest',]);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest',]);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportImageResult

=head1 ATTRIBUTES


=head2 Architecture => Str

The architecture of the virtual machine.



=head2 Description => Str

A description of the import task.



=head2 Hypervisor => Str

The target hypervisor of the import task.



=head2 ImageId => Str

The ID of the Amazon Machine Image (AMI) created by the import task.



=head2 ImportTaskId => Str

The task ID of the import image task.



=head2 LicenseType => Str

The license type of the virtual machine.



=head2 Platform => Str

The operating system of the virtual machine.



=head2 Progress => Str

The progress of the task.



=head2 SnapshotDetails => ArrayRef[L<Paws::EC2::SnapshotDetail>]

Information about the snapshots.



=head2 Status => Str

A brief status of the task.



=head2 StatusMessage => Str

A detailed status message of the import task.




=cut


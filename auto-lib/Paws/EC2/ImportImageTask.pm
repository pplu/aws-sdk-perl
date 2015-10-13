package Paws::EC2::ImportImageTask;
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str', xmlname => 'architecture', traits => ['Unwrapped']);
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', traits => ['Unwrapped']);
  has Hypervisor => (is => 'ro', isa => 'Str', xmlname => 'hypervisor', traits => ['Unwrapped']);
  has ImageId => (is => 'ro', isa => 'Str', xmlname => 'imageId', traits => ['Unwrapped']);
  has ImportTaskId => (is => 'ro', isa => 'Str', xmlname => 'importTaskId', traits => ['Unwrapped']);
  has LicenseType => (is => 'ro', isa => 'Str', xmlname => 'licenseType', traits => ['Unwrapped']);
  has Platform => (is => 'ro', isa => 'Str', xmlname => 'platform', traits => ['Unwrapped']);
  has Progress => (is => 'ro', isa => 'Str', xmlname => 'progress', traits => ['Unwrapped']);
  has SnapshotDetails => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SnapshotDetail]', xmlname => 'snapshotDetailSet', traits => ['Unwrapped']);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', traits => ['Unwrapped']);
  has StatusMessage => (is => 'ro', isa => 'Str', xmlname => 'statusMessage', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportImageTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ImportImageTask object:

  $service_obj->Method(Att1 => { Architecture => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ImportImageTask object:

  $result = $service_obj->Method(...);
  $result->Att1->Architecture

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES

=head2 Architecture => Str

  The architecture of the virtual machine.

Valid values: C<i386> | C<x86_64>

=head2 Description => Str

  A description of the import task.

=head2 Hypervisor => Str

  The target hypervisor for the import task.

Valid values: C<xen>

=head2 ImageId => Str

  The ID of the Amazon Machine Image (AMI) of the imported virtual
machine.

=head2 ImportTaskId => Str

  The ID of the import image task.

=head2 LicenseType => Str

  The license type of the virtual machine.

=head2 Platform => Str

  The description string for the import image task.

=head2 Progress => Str

  The percentage of progress of the import image task.

=head2 SnapshotDetails => ArrayRef[L<Paws::EC2::SnapshotDetail>]

  Information about the snapshots.

=head2 Status => Str

  A brief status for the import image task.

=head2 StatusMessage => Str

  A descriptive status message for the import image task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

package Paws::EC2::ImportImageTask;
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str', request_name => 'architecture', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Encrypted => (is => 'ro', isa => 'Bool', request_name => 'encrypted', traits => ['NameInRequest']);
  has Hypervisor => (is => 'ro', isa => 'Str', request_name => 'hypervisor', traits => ['NameInRequest']);
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest']);
  has ImportTaskId => (is => 'ro', isa => 'Str', request_name => 'importTaskId', traits => ['NameInRequest']);
  has KmsKeyId => (is => 'ro', isa => 'Str', request_name => 'kmsKeyId', traits => ['NameInRequest']);
  has LicenseType => (is => 'ro', isa => 'Str', request_name => 'licenseType', traits => ['NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest']);
  has Progress => (is => 'ro', isa => 'Str', request_name => 'progress', traits => ['NameInRequest']);
  has SnapshotDetails => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SnapshotDetail]', request_name => 'snapshotDetailSet', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
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


=head2 Encrypted => Bool

  Indicates whether the image is encrypted.


=head2 Hypervisor => Str

  The target hypervisor for the import task.

Valid values: C<xen>


=head2 ImageId => Str

  The ID of the Amazon Machine Image (AMI) of the imported virtual
machine.


=head2 ImportTaskId => Str

  The ID of the import image task.


=head2 KmsKeyId => Str

  The identifier for the AWS Key Management Service (AWS KMS) customer
master key (CMK) that was used to create the encrypted image.


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

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

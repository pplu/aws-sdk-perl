
package Paws::EC2::ImportImage;
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str');
  has ClientData => (is => 'ro', isa => 'Paws::EC2::ClientData');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DiskContainers => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ImageDiskContainer]', traits => ['NameInRequest'], request_name => 'DiskContainer' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has Hypervisor => (is => 'ro', isa => 'Str');
  has LicenseType => (is => 'ro', isa => 'Str');
  has Platform => (is => 'ro', isa => 'Str');
  has RoleName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ImportImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportImage - Arguments for method ImportImage on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportImage on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ImportImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportImage.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ImportImageResult = $ec2->ImportImage(
      Architecture => 'MyString',    # OPTIONAL
      ClientData   => {
        UploadEnd   => '1970-01-01T01:00:00',    # OPTIONAL
        Comment     => 'MyString',
        UploadSize  => 1,                        # OPTIONAL
        UploadStart => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      ClientToken    => 'MyString',    # OPTIONAL
      Description    => 'MyString',    # OPTIONAL
      DiskContainers => [
        {
          SnapshotId => 'MyString',
          Format     => 'MyString',
          UserBucket => {
            S3Key    => 'MyString',
            S3Bucket => 'MyString',
          },                           # OPTIONAL
          DeviceName  => 'MyString',
          Url         => 'MyString',
          Description => 'MyString',
        },
        ...
      ],                               # OPTIONAL
      DryRun      => 1,                # OPTIONAL
      Hypervisor  => 'MyString',       # OPTIONAL
      LicenseType => 'MyString',       # OPTIONAL
      Platform    => 'MyString',       # OPTIONAL
      RoleName    => 'MyString',       # OPTIONAL
    );

    # Results:
    my $ImageId         = $ImportImageResult->ImageId;
    my $Platform        = $ImportImageResult->Platform;
    my $ImportTaskId    = $ImportImageResult->ImportTaskId;
    my $Status          = $ImportImageResult->Status;
    my $LicenseType     = $ImportImageResult->LicenseType;
    my $Hypervisor      = $ImportImageResult->Hypervisor;
    my $Progress        = $ImportImageResult->Progress;
    my $StatusMessage   = $ImportImageResult->StatusMessage;
    my $SnapshotDetails = $ImportImageResult->SnapshotDetails;
    my $Architecture    = $ImportImageResult->Architecture;
    my $Description     = $ImportImageResult->Description;

    # Returns a L<Paws::EC2::ImportImageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ImportImage>

=head1 ATTRIBUTES


=head2 Architecture => Str

The architecture of the virtual machine.

Valid values: C<i386> | C<x86_64>



=head2 ClientData => L<Paws::EC2::ClientData>

The client-specific data.



=head2 ClientToken => Str

The token to enable idempotency for VM import requests.



=head2 Description => Str

A description string for the import image task.



=head2 DiskContainers => ArrayRef[L<Paws::EC2::ImageDiskContainer>]

Information about the disk containers.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Hypervisor => Str

The target hypervisor platform.

Valid values: C<xen>



=head2 LicenseType => Str

The license type to be used for the Amazon Machine Image (AMI) after
importing.

B<Note:> You may only use BYOL if you have existing licenses with
rights to use these licenses in a third party cloud like AWS. For more
information, see Prerequisites
(http://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html#prerequisites-image)
in the VM Import/Export User Guide.

Valid values: C<AWS> | C<BYOL>



=head2 Platform => Str

The operating system of the virtual machine.

Valid values: C<Windows> | C<Linux>



=head2 RoleName => Str

The name of the role to use when not using the default role,
'vmimport'.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportImage in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


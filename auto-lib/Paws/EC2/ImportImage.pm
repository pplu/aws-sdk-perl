
package Paws::EC2::ImportImage;
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str');
  has ClientData => (is => 'ro', isa => 'Paws::EC2::ClientData');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DiskContainers => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ImageDiskContainer]', traits => ['NameInRequest'], request_name => 'DiskContainer' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has Encrypted => (is => 'ro', isa => 'Bool');
  has Hypervisor => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
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
        Comment     => 'MyString',
        UploadEnd   => '1970-01-01T01:00:00',    # OPTIONAL
        UploadSize  => 1,                        # OPTIONAL
        UploadStart => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      ClientToken    => 'MyString',    # OPTIONAL
      Description    => 'MyString',    # OPTIONAL
      DiskContainers => [
        {
          Description => 'MyString',
          DeviceName  => 'MyString',
          Format      => 'MyString',
          SnapshotId  => 'MyString',
          Url         => 'MyString',
          UserBucket  => {
            S3Bucket => 'MyString',
            S3Key    => 'MyString',
          },                           # OPTIONAL
        },
        ...
      ],                               # OPTIONAL
      DryRun      => 1,                # OPTIONAL
      Encrypted   => 1,                # OPTIONAL
      Hypervisor  => 'MyString',       # OPTIONAL
      KmsKeyId    => 'MyString',       # OPTIONAL
      LicenseType => 'MyString',       # OPTIONAL
      Platform    => 'MyString',       # OPTIONAL
      RoleName    => 'MyString',       # OPTIONAL
    );

    # Results:
    my $Architecture    = $ImportImageResult->Architecture;
    my $Description     = $ImportImageResult->Description;
    my $Encrypted       = $ImportImageResult->Encrypted;
    my $Hypervisor      = $ImportImageResult->Hypervisor;
    my $ImageId         = $ImportImageResult->ImageId;
    my $ImportTaskId    = $ImportImageResult->ImportTaskId;
    my $KmsKeyId        = $ImportImageResult->KmsKeyId;
    my $LicenseType     = $ImportImageResult->LicenseType;
    my $Platform        = $ImportImageResult->Platform;
    my $Progress        = $ImportImageResult->Progress;
    my $SnapshotDetails = $ImportImageResult->SnapshotDetails;
    my $Status          = $ImportImageResult->Status;
    my $StatusMessage   = $ImportImageResult->StatusMessage;

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



=head2 Encrypted => Bool

Specifies whether the destination AMI of the imported image should be
encrypted. The default CMK for EBS is used unless you specify a
non-default AWS Key Management Service (AWS KMS) CMK using C<KmsKeyId>.
For more information, see Amazon EBS Encryption
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 Hypervisor => Str

The target hypervisor platform.

Valid values: C<xen>



=head2 KmsKeyId => Str

An identifier for the AWS Key Management Service (AWS KMS) customer
master key (CMK) to use when creating the encrypted AMI. This parameter
is only required if you want to use a non-default CMK; if this
parameter is not specified, the default CMK for EBS is used. If a
C<KmsKeyId> is specified, the C<Encrypted> flag must also be set.

The CMK identifier may be provided in any of the following formats:

=over

=item *

Key ID

=item *

Key alias, in the form C<alias/I<ExampleAlias>>

=item *

ARN using key ID. The ID ARN contains the C<arn:aws:kms> namespace,
followed by the region of the CMK, the AWS account ID of the CMK owner,
the C<key> namespace, and then the CMK ID. For example,
arn:aws:kms:I<us-east-1>:I<012345678910>:key/I<abcd1234-a123-456a-a12b-a123b4cd56ef>.

=item *

ARN using key alias. The alias ARN contains the C<arn:aws:kms>
namespace, followed by the region of the CMK, the AWS account ID of the
CMK owner, the C<alias> namespace, and then the CMK alias. For example,
arn:aws:kms:I<us-east-1>:I<012345678910>:alias/I<ExampleAlias>.

=back

AWS parses C<KmsKeyId> asynchronously, meaning that the action you call
may appear to complete even though you provided an invalid identifier.
This action will eventually report failure.

The specified CMK must exist in the region that the AMI is being copied
to.



=head2 LicenseType => Str

The license type to be used for the Amazon Machine Image (AMI) after
importing.

B<Note:> You may only use BYOL if you have existing licenses with
rights to use these licenses in a third party cloud like AWS. For more
information, see Prerequisites
(https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html#prerequisites-image)
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


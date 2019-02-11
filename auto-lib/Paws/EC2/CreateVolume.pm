
package Paws::EC2::CreateVolume;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Encrypted => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'encrypted' );
  has Iops => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Int');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has VolumeType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::Volume');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVolume - Arguments for method CreateVolume on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVolume on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVolume.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To create a new volume
    # This example creates an 80 GiB General Purpose (SSD) volume in the
    # Availability Zone ``us-east-1a``.
    my $Volume = $ec2->CreateVolume(
      {
        'AvailabilityZone' => 'us-east-1a',
        'Size'             => 80,
        'VolumeType'       => 'gp2'
      }
    );

    # Results:
    my $AvailabilityZone = $Volume->AvailabilityZone;
    my $CreateTime       = $Volume->CreateTime;
    my $Encrypted        = $Volume->Encrypted;
    my $Iops             = $Volume->Iops;
    my $Size             = $Volume->Size;
    my $SnapshotId       = $Volume->SnapshotId;
    my $State            = $Volume->State;
    my $VolumeId         = $Volume->VolumeId;
    my $VolumeType       = $Volume->VolumeType;

    # Returns a L<Paws::EC2::Volume> object.
    # To create a new Provisioned IOPS (SSD) volume from a snapshot
    # This example creates a new Provisioned IOPS (SSD) volume with 1000
    # provisioned IOPS from a snapshot in the Availability Zone ``us-east-1a``.
    my $Volume = $ec2->CreateVolume(
      {
        'AvailabilityZone' => 'us-east-1a',
        'Iops'             => 1000,
        'SnapshotId'       => 'snap-066877671789bd71b',
        'VolumeType'       => 'io1'
      }
    );

    # Results:
    my $Attachments      = $Volume->Attachments;
    my $AvailabilityZone = $Volume->AvailabilityZone;
    my $CreateTime       = $Volume->CreateTime;
    my $Iops             = $Volume->Iops;
    my $Size             = $Volume->Size;
    my $SnapshotId       = $Volume->SnapshotId;
    my $State            = $Volume->State;
    my $Tags             = $Volume->Tags;
    my $VolumeId         = $Volume->VolumeId;
    my $VolumeType       = $Volume->VolumeType;

    # Returns a L<Paws::EC2::Volume> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateVolume>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZone => Str

The Availability Zone in which to create the volume. Use
DescribeAvailabilityZones to list the Availability Zones that are
currently available to you.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Encrypted => Bool

Specifies whether the volume should be encrypted. Encrypted Amazon EBS
volumes may only be attached to instances that support Amazon EBS
encryption. Volumes that are created from encrypted snapshots are
automatically encrypted. There is no way to create an encrypted volume
from an unencrypted snapshot or vice versa. If your AMI uses encrypted
volumes, you can only launch it on supported instance types. For more
information, see Amazon EBS Encryption
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 Iops => Int

The number of I/O operations per second (IOPS) to provision for the
volume, with a maximum ratio of 50 IOPS/GiB. Range is 100 to 64,000
IOPS for volumes in most regions. Maximum IOPS of 64,000 is guaranteed
only on Nitro-based instances. Other instance families guarantee
performance up to 32,000 IOPS. For more information, see Amazon EBS
Volume Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

This parameter is valid only for Provisioned IOPS SSD (io1) volumes.



=head2 KmsKeyId => Str

An identifier for the AWS Key Management Service (AWS KMS) customer
master key (CMK) to use when creating the encrypted volume. This
parameter is only required if you want to use a non-default CMK; if
this parameter is not specified, the default CMK for EBS is used. If a
C<KmsKeyId> is specified, the C<Encrypted> flag must also be set.

The CMK identifier may be provided in any of the following formats:

=over

=item *

Key ID

=item *

Key alias

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
The action will eventually fail.



=head2 Size => Int

The size of the volume, in GiBs.

Constraints: 1-16,384 for C<gp2>, 4-16,384 for C<io1>, 500-16,384 for
C<st1>, 500-16,384 for C<sc1>, and 1-1,024 for C<standard>. If you
specify a snapshot, the volume size must be equal to or larger than the
snapshot size.

Default: If you're creating the volume from a snapshot and don't
specify a volume size, the default is the snapshot size.

At least one of Size or SnapshotId are required.



=head2 SnapshotId => Str

The snapshot from which to create the volume.

At least one of Size or SnapshotId are required.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the volume during creation.



=head2 VolumeType => Str

The volume type. This can be C<gp2> for General Purpose SSD, C<io1> for
Provisioned IOPS SSD, C<st1> for Throughput Optimized HDD, C<sc1> for
Cold HDD, or C<standard> for Magnetic volumes.

Defaults: If no volume type is specified, the default is C<standard> in
us-east-1, eu-west-1, eu-central-1, us-west-2, us-west-1, sa-east-1,
ap-northeast-1, ap-northeast-2, ap-southeast-1, ap-southeast-2,
ap-south-1, us-gov-west-1, and cn-north-1. In all other regions, EBS
defaults to C<gp2>.

Valid values are: C<"standard">, C<"io1">, C<"gp2">, C<"sc1">, C<"st1">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVolume in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


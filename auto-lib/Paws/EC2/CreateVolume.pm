
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
      'AvailabilityZone' => 'us-east-1a',
      'Size'             => 80,
      'VolumeType'       => 'gp2'
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
      'AvailabilityZone' => 'us-east-1a',
      'Iops'             => 1000,
      'SnapshotId'       => 'snap-066877671789bd71b',
      'VolumeType'       => 'io1'
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

The Availability Zone in which to create the volume.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Encrypted => Bool

Specifies whether the volume should be encrypted. The effect of setting
the encryption state to C<true> depends on the volume origin (new or
from a snapshot), starting encryption state, ownership, and whether
encryption by default is enabled. For more information, see Encryption
by Default
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default)
in the I<Amazon Elastic Compute Cloud User Guide>.

Encrypted Amazon EBS volumes must be attached to instances that support
Amazon EBS encryption. For more information, see Supported Instance
Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances).



=head2 Iops => Int

The number of I/O operations per second (IOPS) to provision for the
volume, with a maximum ratio of 50 IOPS/GiB. Range is 100 to 64,000
IOPS for volumes in most Regions. Maximum IOPS of 64,000 is guaranteed
only on Nitro-based instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances).
Other instance families guarantee performance up to 32,000 IOPS. For
more information, see Amazon EBS Volume Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

This parameter is valid only for Provisioned IOPS SSD (io1) volumes.



=head2 KmsKeyId => Str

The identifier of the AWS Key Management Service (AWS KMS) customer
master key (CMK) to use for Amazon EBS encryption. If this parameter is
not specified, your AWS managed CMK for EBS is used. If C<KmsKeyId> is
specified, the encrypted state must be C<true>.

You can specify the CMK using any of the following:

=over

=item *

Key ID. For example, key/1234abcd-12ab-34cd-56ef-1234567890ab.

=item *

Key alias. For example, alias/ExampleAlias.

=item *

Key ARN. For example,
arn:aws:kms:I<us-east-1>:I<012345678910>:key/I<abcd1234-a123-456a-a12b-a123b4cd56ef>.

=item *

Alias ARN. For example,
arn:aws:kms:I<us-east-1>:I<012345678910>:alias/I<ExampleAlias>.

=back

AWS authenticates the CMK asynchronously. Therefore, if you specify an
ID, alias, or ARN that is not valid, the action can appear to complete,
but eventually fails.



=head2 Size => Int

The size of the volume, in GiBs.

Constraints: 1-16,384 for C<gp2>, 4-16,384 for C<io1>, 500-16,384 for
C<st1>, 500-16,384 for C<sc1>, and 1-1,024 for C<standard>. If you
specify a snapshot, the volume size must be equal to or larger than the
snapshot size.

Default: If you're creating the volume from a snapshot and don't
specify a volume size, the default is the snapshot size.

At least one of Size or SnapshotId is required.



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
ap-south-1, us-gov-west-1, and cn-north-1. In all other Regions, EBS
defaults to C<gp2>.

Valid values are: C<"standard">, C<"io1">, C<"gp2">, C<"sc1">, C<"st1">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVolume in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


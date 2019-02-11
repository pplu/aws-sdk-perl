
package Paws::StorageGateway::CreateStorediSCSIVolume;
  use Moose;
  has DiskId => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has KMSEncrypted => (is => 'ro', isa => 'Bool');
  has KMSKey => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has PreserveExistingData => (is => 'ro', isa => 'Bool', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str');
  has TargetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStorediSCSIVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::CreateStorediSCSIVolumeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateStorediSCSIVolume - Arguments for method CreateStorediSCSIVolume on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStorediSCSIVolume on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method CreateStorediSCSIVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStorediSCSIVolume.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To create a stored iSCSI volume
    # Creates a stored volume on a specified stored gateway.
    my $CreateStorediSCSIVolumeOutput =
      $storagegateway->CreateStorediSCSIVolume(
      {
        'DiskId' => 'pci-0000:03:00.0-scsi-0:0:0:0',
        'GatewayARN' =>
          'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B',
        'NetworkInterfaceId'   => '10.1.1.1',
        'PreserveExistingData' => 1,
        'SnapshotId'           => 'snap-f47b7b94',
        'TargetName'           => 'my-volume'
      }
      );

    # Results:
    my $TargetARN         = $CreateStorediSCSIVolumeOutput->TargetARN;
    my $VolumeARN         = $CreateStorediSCSIVolumeOutput->VolumeARN;
    my $VolumeSizeInBytes = $CreateStorediSCSIVolumeOutput->VolumeSizeInBytes;

    # Returns a L<Paws::StorageGateway::CreateStorediSCSIVolumeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/CreateStorediSCSIVolume>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DiskId => Str

The unique identifier for the gateway local disk that is configured as
a stored volume. Use ListLocalDisks
(http://docs.aws.amazon.com/storagegateway/latest/userguide/API_ListLocalDisks.html)
to list disk IDs for a gateway.



=head2 B<REQUIRED> GatewayARN => Str





=head2 KMSEncrypted => Bool

True to use Amazon S3 server side encryption with your own AWS KMS key,
or false to use a key managed by Amazon S3. Optional.



=head2 KMSKey => Str

The Amazon Resource Name (ARN) of the KMS key used for Amazon S3 server
side encryption. This value can only be set when KMSEncrypted is true.
Optional.



=head2 B<REQUIRED> NetworkInterfaceId => Str

The network interface of the gateway on which to expose the iSCSI
target. Only IPv4 addresses are accepted. Use
DescribeGatewayInformation to get a list of the network interfaces
available on a gateway.

Valid Values: A valid IP address.



=head2 B<REQUIRED> PreserveExistingData => Bool

Specify this field as true if you want to preserve the data on the
local disk. Otherwise, specifying this field as false creates an empty
volume.

Valid Values: true, false



=head2 SnapshotId => Str

The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore as
the new stored volume. Specify this field if you want to create the
iSCSI storage volume from a snapshot otherwise do not include this
field. To list snapshots for your account use DescribeSnapshots
(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html)
in the I<Amazon Elastic Compute Cloud API Reference>.



=head2 B<REQUIRED> TargetName => Str

The name of the iSCSI target used by initiators to connect to the
target and as a suffix for the target ARN. For example, specifying
C<TargetName> as I<myvolume> results in the target ARN of
arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume.
The target name must be unique across all volumes of a gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStorediSCSIVolume in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


# Generated from json/callargs_class.tt

package Paws::StorageGateway::CreateStorediSCSIVolume;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::StorageGateway::Types qw/StorageGateway_Tag/;
  has DiskId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has GatewayARN => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has KMSEncrypted => (is => 'ro', isa => Bool, predicate => 1);
  has KMSKey => (is => 'ro', isa => Str, predicate => 1);
  has NetworkInterfaceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PreserveExistingData => (is => 'ro', isa => Bool, required => 1, predicate => 1);
  has SnapshotId => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[StorageGateway_Tag], predicate => 1);
  has TargetName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateStorediSCSIVolume');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::StorageGateway::CreateStorediSCSIVolumeOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PreserveExistingData' => {
                                           'type' => 'Bool'
                                         },
               'SnapshotId' => {
                                 'type' => 'Str'
                               },
               'TargetName' => {
                                 'type' => 'Str'
                               },
               'DiskId' => {
                             'type' => 'Str'
                           },
               'KMSKey' => {
                             'type' => 'Str'
                           },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       },
               'KMSEncrypted' => {
                                   'type' => 'Bool'
                                 },
               'Tags' => {
                           'class' => 'Paws::StorageGateway::Tag',
                           'type' => 'ArrayRef[StorageGateway_Tag]'
                         },
               'GatewayARN' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'PreserveExistingData' => 1,
                    'DiskId' => 1,
                    'TargetName' => 1,
                    'NetworkInterfaceId' => 1,
                    'GatewayARN' => 1
                  }
}
;
    return $Params_map;
  }

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
      'DiskId' => 'pci-0000:03:00.0-scsi-0:0:0:0',
      'GatewayARN' =>
        'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B',
      'NetworkInterfaceId'   => '10.1.1.1',
      'PreserveExistingData' => 1,
      'SnapshotId'           => 'snap-f47b7b94',
      'TargetName'           => 'my-volume'
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
(https://docs.aws.amazon.com/storagegateway/latest/userguide/API_ListLocalDisks.html)
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
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html)
in the I<Amazon Elastic Compute Cloud API Reference>.



=head2 Tags => ArrayRef[StorageGateway_Tag]

A list of up to 50 tags that can be assigned to a stored volume. Each
tag is a key-value pair.

Valid characters for key and value are letters, spaces, and numbers
representable in UTF-8 format, and the following special characters: +
- = . _ : / @. The maximum length of a tag's key is 128 characters, and
the maximum length for a tag's value is 256.



=head2 B<REQUIRED> TargetName => Str

The name of the iSCSI target used by an initiator to connect to a
volume and used as a suffix for the target ARN. For example, specifying
C<TargetName> as I<myvolume> results in the target ARN of
C<arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume>.
The target name must be unique across all volumes on a gateway.

If you don't specify a value, Storage Gateway uses the value that was
previously used for this volume as the new target name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStorediSCSIVolume in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


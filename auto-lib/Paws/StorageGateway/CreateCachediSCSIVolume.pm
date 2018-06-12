
package Paws::StorageGateway::CreateCachediSCSIVolume;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has KMSEncrypted => (is => 'ro', isa => 'Bool');
  has KMSKey => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str');
  has SourceVolumeARN => (is => 'ro', isa => 'Str');
  has TargetName => (is => 'ro', isa => 'Str', required => 1);
  has VolumeSizeInBytes => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCachediSCSIVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::CreateCachediSCSIVolumeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateCachediSCSIVolume - Arguments for method CreateCachediSCSIVolume on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCachediSCSIVolume on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method CreateCachediSCSIVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCachediSCSIVolume.

As an example:

  $service_obj->CreateCachediSCSIVolume(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/CreateCachediSCSIVolume>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str





=head2 B<REQUIRED> GatewayARN => Str





=head2 KMSEncrypted => Bool

True to use Amazon S3 server side encryption with your own AWS KMS key,
or false to use a key managed by Amazon S3. Optional.



=head2 KMSKey => Str

The Amazon Resource Name (ARN) of the KMS key used for Amazon S3 server
side encryption. This value can only be set when KMSEncrypted is true.
Optional.



=head2 B<REQUIRED> NetworkInterfaceId => Str





=head2 SnapshotId => Str





=head2 SourceVolumeARN => Str

The ARN for an existing volume. Specifying this ARN makes the new
volume into an exact copy of the specified existing volume's latest
recovery point. The C<VolumeSizeInBytes> value for this new volume must
be equal to or larger than the size of the existing volume, in bytes.



=head2 B<REQUIRED> TargetName => Str





=head2 B<REQUIRED> VolumeSizeInBytes => Int






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCachediSCSIVolume in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::StorageGateway::AttachVolume;
  use Moose;
  has DiskId => (is => 'ro', isa => 'Str');
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has TargetName => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::AttachVolumeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::AttachVolume - Arguments for method AttachVolume on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachVolume on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method AttachVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachVolume.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $AttachVolumeOutput = $storagegateway->AttachVolume(
      GatewayARN         => 'MyGatewayARN',
      NetworkInterfaceId => 'MyNetworkInterfaceId',
      VolumeARN          => 'MyVolumeARN',
      DiskId             => 'MyDiskId',               # OPTIONAL
      TargetName         => 'MyTargetName',           # OPTIONAL
    );

    # Results:
    my $TargetARN = $AttachVolumeOutput->TargetARN;
    my $VolumeARN = $AttachVolumeOutput->VolumeARN;

    # Returns a L<Paws::StorageGateway::AttachVolumeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/AttachVolume>

=head1 ATTRIBUTES


=head2 DiskId => Str

The unique device ID or other distinguishing data that identifies the
local disk used to create the volume. This value is only required when
you are attaching a stored volume.



=head2 B<REQUIRED> GatewayARN => Str

The Amazon Resource Name (ARN) of the gateway that you want to attach
the volume to.



=head2 B<REQUIRED> NetworkInterfaceId => Str

The network interface of the gateway on which to expose the iSCSI
target. Only IPv4 addresses are accepted. Use
DescribeGatewayInformation to get a list of the network interfaces
available on a gateway.

Valid Values: A valid IP address.



=head2 TargetName => Str

The name of the iSCSI target used by an initiator to connect to a
volume and used as a suffix for the target ARN. For example, specifying
C<TargetName> as I<myvolume> results in the target ARN of
C<arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume>.
The target name must be unique across all volumes on a gateway.

If you don't specify a value, Storage Gateway uses the value that was
previously used for this volume as the new target name.



=head2 B<REQUIRED> VolumeARN => Str

The Amazon Resource Name (ARN) of the volume to attach to the specified
gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachVolume in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


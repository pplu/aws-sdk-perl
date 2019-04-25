package Paws::StorageGateway::VolumeInfo;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str');
  has GatewayId => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeAttachmentStatus => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Int');
  has VolumeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::VolumeInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::VolumeInfo object:

  $service_obj->Method(Att1 => { GatewayARN => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::VolumeInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->GatewayARN

=head1 DESCRIPTION

Describes a storage volume object.

=head1 ATTRIBUTES


=head2 GatewayARN => Str

  


=head2 GatewayId => Str

  The unique identifier assigned to your gateway during activation. This
ID becomes part of the gateway Amazon Resource Name (ARN), which you
use as input for other operations.

Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and
hyphens (-).


=head2 VolumeARN => Str

  The Amazon Resource Name (ARN) for the storage volume. For example, the
following is a valid ARN:

C<arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB>

Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and
hyphens (-).


=head2 VolumeAttachmentStatus => Str

  


=head2 VolumeId => Str

  The unique identifier assigned to the volume. This ID becomes part of
the volume Amazon Resource Name (ARN), which you use as input for other
operations.

Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and
hyphens (-).


=head2 VolumeSizeInBytes => Int

  The size of the volume in bytes.

Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and
hyphens (-).


=head2 VolumeType => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


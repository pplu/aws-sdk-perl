
package Paws::AlexaForBusiness::AssociateDeviceWithRoom;
  use Moose;
  has DeviceArn => (is => 'ro', isa => 'Str');
  has RoomArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateDeviceWithRoom');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::AssociateDeviceWithRoomResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::AssociateDeviceWithRoom - Arguments for method AssociateDeviceWithRoom on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateDeviceWithRoom on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method AssociateDeviceWithRoom.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateDeviceWithRoom.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $AssociateDeviceWithRoomResponse = $a4b->AssociateDeviceWithRoom(
      DeviceArn => 'MyArn',    # OPTIONAL
      RoomArn   => 'MyArn',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/AssociateDeviceWithRoom>

=head1 ATTRIBUTES


=head2 DeviceArn => Str

The ARN of the device to associate to a room. Required.



=head2 RoomArn => Str

The ARN of the room with which to associate the device. Required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateDeviceWithRoom in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


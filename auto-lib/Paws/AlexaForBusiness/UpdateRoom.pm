
package Paws::AlexaForBusiness::UpdateRoom;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has ProfileArn => (is => 'ro', isa => 'Str');
  has ProviderCalendarId => (is => 'ro', isa => 'Str');
  has RoomArn => (is => 'ro', isa => 'Str');
  has RoomName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRoom');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::UpdateRoomResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::UpdateRoom - Arguments for method UpdateRoom on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRoom on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method UpdateRoom.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRoom.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $UpdateRoomResponse = $a4b->UpdateRoom(
      Description        => 'MyRoomDescription',       # OPTIONAL
      ProfileArn         => 'MyArn',                   # OPTIONAL
      ProviderCalendarId => 'MyProviderCalendarId',    # OPTIONAL
      RoomArn            => 'MyArn',                   # OPTIONAL
      RoomName           => 'MyRoomName',              # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/UpdateRoom>

=head1 ATTRIBUTES


=head2 Description => Str

The updated description for the room.



=head2 ProfileArn => Str

The updated profile ARN for the room.



=head2 ProviderCalendarId => Str

The updated provider calendar ARN for the room.



=head2 RoomArn => Str

The ARN of the room to update.



=head2 RoomName => Str

The updated name for the room.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRoom in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


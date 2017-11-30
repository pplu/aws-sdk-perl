
package Paws::AlexaForBusiness::DisassociateSkillGroupFromRoom;
  use Moose;
  has RoomArn => (is => 'ro', isa => 'Str');
  has SkillGroupArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateSkillGroupFromRoom');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::DisassociateSkillGroupFromRoomResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::DisassociateSkillGroupFromRoom - Arguments for method DisassociateSkillGroupFromRoom on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateSkillGroupFromRoom on the 
Alexa For Business service. Use the attributes of this class
as arguments to method DisassociateSkillGroupFromRoom.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateSkillGroupFromRoom.

As an example:

  $service_obj->DisassociateSkillGroupFromRoom(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 RoomArn => Str

The ARN of the room from which the skill group is to be disassociated.
Required.



=head2 SkillGroupArn => Str

The ARN of the skill group to disassociate from a room. Required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateSkillGroupFromRoom in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


package Paws::Chime::Room;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RoomId => (is => 'ro', isa => 'Str');
  has UpdatedTimestamp => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::Room

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::Room object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., UpdatedTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::Room object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

The Amazon Chime chat room details.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The Amazon Chime account ID.


=head2 CreatedBy => Str

  The identifier of the room creator.


=head2 CreatedTimestamp => Str

  The room creation timestamp, in ISO 8601 format.


=head2 Name => Str

  The room name.


=head2 RoomId => Str

  The room ID.


=head2 UpdatedTimestamp => Str

  The room update timestamp, in ISO 8601 format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


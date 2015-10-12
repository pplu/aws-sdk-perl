package Paws::EC2::VolumeStatusAction;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', xmlname => 'code', traits => ['Unwrapped']);
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', traits => ['Unwrapped']);
  has EventId => (is => 'ro', isa => 'Str', xmlname => 'eventId', traits => ['Unwrapped']);
  has EventType => (is => 'ro', isa => 'Str', xmlname => 'eventType', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VolumeStatusAction

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VolumeStatusAction object:

  $service_obj->Method(Att1 => { Code => $value, ..., EventType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VolumeStatusAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 ATTRIBUTES

=head2 Code => Str

  The code identifying the operation, for example, C<enable-volume-io>.

=head2 Description => Str

  A description of the operation.

=head2 EventId => Str

  The ID of the event associated with this operation.

=head2 EventType => Str

  The event type associated with this operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

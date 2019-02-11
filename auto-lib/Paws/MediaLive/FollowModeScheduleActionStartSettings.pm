package Paws::MediaLive::FollowModeScheduleActionStartSettings;
  use Moose;
  has FollowPoint => (is => 'ro', isa => 'Str', request_name => 'followPoint', traits => ['NameInRequest'], required => 1);
  has ReferenceActionName => (is => 'ro', isa => 'Str', request_name => 'referenceActionName', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::FollowModeScheduleActionStartSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::FollowModeScheduleActionStartSettings object:

  $service_obj->Method(Att1 => { FollowPoint => $value, ..., ReferenceActionName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::FollowModeScheduleActionStartSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->FollowPoint

=head1 DESCRIPTION

Settings to specify if an action follows another.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FollowPoint => Str

  Identifies whether this action starts relative to the start or relative
to the end of the reference action.


=head2 B<REQUIRED> ReferenceActionName => Str

  The action name of another action that this one refers to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


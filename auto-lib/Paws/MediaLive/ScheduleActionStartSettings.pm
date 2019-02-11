package Paws::MediaLive::ScheduleActionStartSettings;
  use Moose;
  has FixedModeScheduleActionStartSettings => (is => 'ro', isa => 'Paws::MediaLive::FixedModeScheduleActionStartSettings', request_name => 'fixedModeScheduleActionStartSettings', traits => ['NameInRequest']);
  has FollowModeScheduleActionStartSettings => (is => 'ro', isa => 'Paws::MediaLive::FollowModeScheduleActionStartSettings', request_name => 'followModeScheduleActionStartSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ScheduleActionStartSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::ScheduleActionStartSettings object:

  $service_obj->Method(Att1 => { FixedModeScheduleActionStartSettings => $value, ..., FollowModeScheduleActionStartSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ScheduleActionStartSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->FixedModeScheduleActionStartSettings

=head1 DESCRIPTION

Settings to specify the start time for an action.

=head1 ATTRIBUTES


=head2 FixedModeScheduleActionStartSettings => L<Paws::MediaLive::FixedModeScheduleActionStartSettings>

  Holds the start time for the action.


=head2 FollowModeScheduleActionStartSettings => L<Paws::MediaLive::FollowModeScheduleActionStartSettings>

  Specifies an action to follow for scheduling this action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


package Paws::MediaLive::ScheduleActionStartSettings;
  use Moose;
  has FixedModeScheduleActionStartSettings => (is => 'ro', isa => 'Paws::MediaLive::FixedModeScheduleActionStartSettings', request_name => 'fixedModeScheduleActionStartSettings', traits => ['NameInRequest']);
  has FollowModeScheduleActionStartSettings => (is => 'ro', isa => 'Paws::MediaLive::FollowModeScheduleActionStartSettings', request_name => 'followModeScheduleActionStartSettings', traits => ['NameInRequest']);
  has ImmediateModeScheduleActionStartSettings => (is => 'ro', isa => 'Paws::MediaLive::ImmediateModeScheduleActionStartSettings', request_name => 'immediateModeScheduleActionStartSettings', traits => ['NameInRequest']);
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

  $service_obj->Method(Att1 => { FixedModeScheduleActionStartSettings => $value, ..., ImmediateModeScheduleActionStartSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ScheduleActionStartSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->FixedModeScheduleActionStartSettings

=head1 DESCRIPTION

Settings to specify when an action should occur. Only one of the
options must be selected.

=head1 ATTRIBUTES


=head2 FixedModeScheduleActionStartSettings => L<Paws::MediaLive::FixedModeScheduleActionStartSettings>

  Option for specifying the start time for an action.


=head2 FollowModeScheduleActionStartSettings => L<Paws::MediaLive::FollowModeScheduleActionStartSettings>

  Option for specifying an action as relative to another action.


=head2 ImmediateModeScheduleActionStartSettings => L<Paws::MediaLive::ImmediateModeScheduleActionStartSettings>

  Option for specifying an action that should be applied immediately.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


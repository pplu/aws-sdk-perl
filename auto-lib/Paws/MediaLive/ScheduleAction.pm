package Paws::MediaLive::ScheduleAction;
  use Moose;
  has ActionName => (is => 'ro', isa => 'Str', request_name => 'actionName', traits => ['NameInRequest'], required => 1);
  has ScheduleActionSettings => (is => 'ro', isa => 'Paws::MediaLive::ScheduleActionSettings', request_name => 'scheduleActionSettings', traits => ['NameInRequest'], required => 1);
  has ScheduleActionStartSettings => (is => 'ro', isa => 'Paws::MediaLive::ScheduleActionStartSettings', request_name => 'scheduleActionStartSettings', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ScheduleAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::ScheduleAction object:

  $service_obj->Method(Att1 => { ActionName => $value, ..., ScheduleActionStartSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ScheduleAction object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionName

=head1 DESCRIPTION

Contains information on a single schedule action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionName => Str

  The name of the action, must be unique within the schedule. This name
provides the main reference to an action once it is added to the
schedule. A name is unique if it is no longer in the schedule. The
schedule is automatically cleaned up to remove actions with a start
time of more than 1 hour ago (approximately) so at that point a name
can be reused.


=head2 B<REQUIRED> ScheduleActionSettings => L<Paws::MediaLive::ScheduleActionSettings>

  Settings for this schedule action.


=head2 B<REQUIRED> ScheduleActionStartSettings => L<Paws::MediaLive::ScheduleActionStartSettings>

  The time for the action to start in the channel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


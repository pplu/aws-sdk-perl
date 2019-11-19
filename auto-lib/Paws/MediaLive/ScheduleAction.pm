# Generated from default/object.tt
package Paws::MediaLive::ScheduleAction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaLive::Types qw/MediaLive_ScheduleActionSettings MediaLive_ScheduleActionStartSettings/;
  has ActionName => (is => 'ro', isa => Str, required => 1);
  has ScheduleActionSettings => (is => 'ro', isa => MediaLive_ScheduleActionSettings, required => 1);
  has ScheduleActionStartSettings => (is => 'ro', isa => MediaLive_ScheduleActionStartSettings, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ScheduleActionSettings' => {
                                             'class' => 'Paws::MediaLive::ScheduleActionSettings',
                                             'type' => 'MediaLive_ScheduleActionSettings'
                                           },
               'ScheduleActionStartSettings' => {
                                                  'class' => 'Paws::MediaLive::ScheduleActionStartSettings',
                                                  'type' => 'MediaLive_ScheduleActionStartSettings'
                                                },
               'ActionName' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'ScheduleActionStartSettings' => 'scheduleActionStartSettings',
                       'ScheduleActionSettings' => 'scheduleActionSettings',
                       'ActionName' => 'actionName'
                     },
  'IsRequired' => {
                    'ActionName' => 1,
                    'ScheduleActionSettings' => 1,
                    'ScheduleActionStartSettings' => 1
                  }
}
;
    return $Params_map;
  }


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


=head2 B<REQUIRED> ScheduleActionSettings => MediaLive_ScheduleActionSettings

  Settings for this schedule action.


=head2 B<REQUIRED> ScheduleActionStartSettings => MediaLive_ScheduleActionStartSettings

  The time for the action to start in the channel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


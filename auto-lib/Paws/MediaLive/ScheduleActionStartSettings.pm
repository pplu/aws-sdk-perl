# Generated from default/object.tt
package Paws::MediaLive::ScheduleActionStartSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_FixedModeScheduleActionStartSettings MediaLive_FollowModeScheduleActionStartSettings/;
  has FixedModeScheduleActionStartSettings => (is => 'ro', isa => MediaLive_FixedModeScheduleActionStartSettings);
  has FollowModeScheduleActionStartSettings => (is => 'ro', isa => MediaLive_FollowModeScheduleActionStartSettings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FixedModeScheduleActionStartSettings' => {
                                                           'class' => 'Paws::MediaLive::FixedModeScheduleActionStartSettings',
                                                           'type' => 'MediaLive_FixedModeScheduleActionStartSettings'
                                                         },
               'FollowModeScheduleActionStartSettings' => {
                                                            'class' => 'Paws::MediaLive::FollowModeScheduleActionStartSettings',
                                                            'type' => 'MediaLive_FollowModeScheduleActionStartSettings'
                                                          }
             },
  'NameInRequest' => {
                       'FixedModeScheduleActionStartSettings' => 'fixedModeScheduleActionStartSettings',
                       'FollowModeScheduleActionStartSettings' => 'followModeScheduleActionStartSettings'
                     }
}
;
    return $Params_map;
  }


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


=head2 FixedModeScheduleActionStartSettings => MediaLive_FixedModeScheduleActionStartSettings

  Holds the start time for the action.


=head2 FollowModeScheduleActionStartSettings => MediaLive_FollowModeScheduleActionStartSettings

  Specifies an action to follow for scheduling this action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


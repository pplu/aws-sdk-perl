# Generated from default/object.tt
package Paws::MediaLive::ScheduleActionStartSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_FollowModeScheduleActionStartSettings MediaLive_ImmediateModeScheduleActionStartSettings MediaLive_FixedModeScheduleActionStartSettings/;
  has FixedModeScheduleActionStartSettings => (is => 'ro', isa => MediaLive_FixedModeScheduleActionStartSettings);
  has FollowModeScheduleActionStartSettings => (is => 'ro', isa => MediaLive_FollowModeScheduleActionStartSettings);
  has ImmediateModeScheduleActionStartSettings => (is => 'ro', isa => MediaLive_ImmediateModeScheduleActionStartSettings);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ImmediateModeScheduleActionStartSettings' => 'immediateModeScheduleActionStartSettings',
                       'FollowModeScheduleActionStartSettings' => 'followModeScheduleActionStartSettings',
                       'FixedModeScheduleActionStartSettings' => 'fixedModeScheduleActionStartSettings'
                     },
  'types' => {
               'FixedModeScheduleActionStartSettings' => {
                                                           'type' => 'MediaLive_FixedModeScheduleActionStartSettings',
                                                           'class' => 'Paws::MediaLive::FixedModeScheduleActionStartSettings'
                                                         },
               'ImmediateModeScheduleActionStartSettings' => {
                                                               'class' => 'Paws::MediaLive::ImmediateModeScheduleActionStartSettings',
                                                               'type' => 'MediaLive_ImmediateModeScheduleActionStartSettings'
                                                             },
               'FollowModeScheduleActionStartSettings' => {
                                                            'type' => 'MediaLive_FollowModeScheduleActionStartSettings',
                                                            'class' => 'Paws::MediaLive::FollowModeScheduleActionStartSettings'
                                                          }
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

  $service_obj->Method(Att1 => { FixedModeScheduleActionStartSettings => $value, ..., ImmediateModeScheduleActionStartSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ScheduleActionStartSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->FixedModeScheduleActionStartSettings

=head1 DESCRIPTION

Settings to specify when an action should occur. Only one of the
options must be selected.

=head1 ATTRIBUTES


=head2 FixedModeScheduleActionStartSettings => MediaLive_FixedModeScheduleActionStartSettings

  Option for specifying the start time for an action.


=head2 FollowModeScheduleActionStartSettings => MediaLive_FollowModeScheduleActionStartSettings

  Option for specifying an action as relative to another action.


=head2 ImmediateModeScheduleActionStartSettings => MediaLive_ImmediateModeScheduleActionStartSettings

  Option for specifying an action that should be applied immediately.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


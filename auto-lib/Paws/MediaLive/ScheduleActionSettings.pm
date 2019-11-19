# Generated from default/object.tt
package Paws::MediaLive::ScheduleActionSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_InputSwitchScheduleActionSettings MediaLive_Scte35ReturnToNetworkScheduleActionSettings MediaLive_Scte35SpliceInsertScheduleActionSettings MediaLive_Scte35TimeSignalScheduleActionSettings MediaLive_StaticImageActivateScheduleActionSettings MediaLive_HlsTimedMetadataScheduleActionSettings MediaLive_PauseStateScheduleActionSettings MediaLive_StaticImageDeactivateScheduleActionSettings/;
  has HlsTimedMetadataSettings => (is => 'ro', isa => MediaLive_HlsTimedMetadataScheduleActionSettings);
  has InputSwitchSettings => (is => 'ro', isa => MediaLive_InputSwitchScheduleActionSettings);
  has PauseStateSettings => (is => 'ro', isa => MediaLive_PauseStateScheduleActionSettings);
  has Scte35ReturnToNetworkSettings => (is => 'ro', isa => MediaLive_Scte35ReturnToNetworkScheduleActionSettings);
  has Scte35SpliceInsertSettings => (is => 'ro', isa => MediaLive_Scte35SpliceInsertScheduleActionSettings);
  has Scte35TimeSignalSettings => (is => 'ro', isa => MediaLive_Scte35TimeSignalScheduleActionSettings);
  has StaticImageActivateSettings => (is => 'ro', isa => MediaLive_StaticImageActivateScheduleActionSettings);
  has StaticImageDeactivateSettings => (is => 'ro', isa => MediaLive_StaticImageDeactivateScheduleActionSettings);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'HlsTimedMetadataSettings' => 'hlsTimedMetadataSettings',
                       'PauseStateSettings' => 'pauseStateSettings',
                       'StaticImageActivateSettings' => 'staticImageActivateSettings',
                       'StaticImageDeactivateSettings' => 'staticImageDeactivateSettings',
                       'InputSwitchSettings' => 'inputSwitchSettings',
                       'Scte35SpliceInsertSettings' => 'scte35SpliceInsertSettings',
                       'Scte35TimeSignalSettings' => 'scte35TimeSignalSettings',
                       'Scte35ReturnToNetworkSettings' => 'scte35ReturnToNetworkSettings'
                     },
  'types' => {
               'Scte35SpliceInsertSettings' => {
                                                 'type' => 'MediaLive_Scte35SpliceInsertScheduleActionSettings',
                                                 'class' => 'Paws::MediaLive::Scte35SpliceInsertScheduleActionSettings'
                                               },
               'Scte35TimeSignalSettings' => {
                                               'type' => 'MediaLive_Scte35TimeSignalScheduleActionSettings',
                                               'class' => 'Paws::MediaLive::Scte35TimeSignalScheduleActionSettings'
                                             },
               'Scte35ReturnToNetworkSettings' => {
                                                    'class' => 'Paws::MediaLive::Scte35ReturnToNetworkScheduleActionSettings',
                                                    'type' => 'MediaLive_Scte35ReturnToNetworkScheduleActionSettings'
                                                  },
               'StaticImageDeactivateSettings' => {
                                                    'type' => 'MediaLive_StaticImageDeactivateScheduleActionSettings',
                                                    'class' => 'Paws::MediaLive::StaticImageDeactivateScheduleActionSettings'
                                                  },
               'InputSwitchSettings' => {
                                          'class' => 'Paws::MediaLive::InputSwitchScheduleActionSettings',
                                          'type' => 'MediaLive_InputSwitchScheduleActionSettings'
                                        },
               'HlsTimedMetadataSettings' => {
                                               'class' => 'Paws::MediaLive::HlsTimedMetadataScheduleActionSettings',
                                               'type' => 'MediaLive_HlsTimedMetadataScheduleActionSettings'
                                             },
               'PauseStateSettings' => {
                                         'type' => 'MediaLive_PauseStateScheduleActionSettings',
                                         'class' => 'Paws::MediaLive::PauseStateScheduleActionSettings'
                                       },
               'StaticImageActivateSettings' => {
                                                  'type' => 'MediaLive_StaticImageActivateScheduleActionSettings',
                                                  'class' => 'Paws::MediaLive::StaticImageActivateScheduleActionSettings'
                                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ScheduleActionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::ScheduleActionSettings object:

  $service_obj->Method(Att1 => { HlsTimedMetadataSettings => $value, ..., StaticImageDeactivateSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ScheduleActionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->HlsTimedMetadataSettings

=head1 DESCRIPTION

Holds the settings for a single schedule action.

=head1 ATTRIBUTES


=head2 HlsTimedMetadataSettings => MediaLive_HlsTimedMetadataScheduleActionSettings

  Action to insert HLS metadata


=head2 InputSwitchSettings => MediaLive_InputSwitchScheduleActionSettings

  Action to switch the input


=head2 PauseStateSettings => MediaLive_PauseStateScheduleActionSettings

  Action to pause or unpause one or both channel pipelines


=head2 Scte35ReturnToNetworkSettings => MediaLive_Scte35ReturnToNetworkScheduleActionSettings

  Action to insert SCTE-35 return_to_network message


=head2 Scte35SpliceInsertSettings => MediaLive_Scte35SpliceInsertScheduleActionSettings

  Action to insert SCTE-35 splice_insert message


=head2 Scte35TimeSignalSettings => MediaLive_Scte35TimeSignalScheduleActionSettings

  Action to insert SCTE-35 time_signal message


=head2 StaticImageActivateSettings => MediaLive_StaticImageActivateScheduleActionSettings

  Action to activate a static image overlay


=head2 StaticImageDeactivateSettings => MediaLive_StaticImageDeactivateScheduleActionSettings

  Action to deactivate a static image overlay



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


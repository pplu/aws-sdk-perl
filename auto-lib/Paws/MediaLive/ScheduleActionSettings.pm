package Paws::MediaLive::ScheduleActionSettings;
  use Moose;
  has HlsTimedMetadataSettings => (is => 'ro', isa => 'Paws::MediaLive::HlsTimedMetadataScheduleActionSettings', request_name => 'hlsTimedMetadataSettings', traits => ['NameInRequest']);
  has InputSwitchSettings => (is => 'ro', isa => 'Paws::MediaLive::InputSwitchScheduleActionSettings', request_name => 'inputSwitchSettings', traits => ['NameInRequest']);
  has Scte35ReturnToNetworkSettings => (is => 'ro', isa => 'Paws::MediaLive::Scte35ReturnToNetworkScheduleActionSettings', request_name => 'scte35ReturnToNetworkSettings', traits => ['NameInRequest']);
  has Scte35SpliceInsertSettings => (is => 'ro', isa => 'Paws::MediaLive::Scte35SpliceInsertScheduleActionSettings', request_name => 'scte35SpliceInsertSettings', traits => ['NameInRequest']);
  has Scte35TimeSignalSettings => (is => 'ro', isa => 'Paws::MediaLive::Scte35TimeSignalScheduleActionSettings', request_name => 'scte35TimeSignalSettings', traits => ['NameInRequest']);
  has StaticImageActivateSettings => (is => 'ro', isa => 'Paws::MediaLive::StaticImageActivateScheduleActionSettings', request_name => 'staticImageActivateSettings', traits => ['NameInRequest']);
  has StaticImageDeactivateSettings => (is => 'ro', isa => 'Paws::MediaLive::StaticImageDeactivateScheduleActionSettings', request_name => 'staticImageDeactivateSettings', traits => ['NameInRequest']);
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


=head2 HlsTimedMetadataSettings => L<Paws::MediaLive::HlsTimedMetadataScheduleActionSettings>

  Settings to emit HLS metadata


=head2 InputSwitchSettings => L<Paws::MediaLive::InputSwitchScheduleActionSettings>

  Settings to switch an input


=head2 Scte35ReturnToNetworkSettings => L<Paws::MediaLive::Scte35ReturnToNetworkScheduleActionSettings>

  Settings for SCTE-35 return_to_network message


=head2 Scte35SpliceInsertSettings => L<Paws::MediaLive::Scte35SpliceInsertScheduleActionSettings>

  Settings for SCTE-35 splice_insert message


=head2 Scte35TimeSignalSettings => L<Paws::MediaLive::Scte35TimeSignalScheduleActionSettings>

  Settings for SCTE-35 time_signal message


=head2 StaticImageActivateSettings => L<Paws::MediaLive::StaticImageActivateScheduleActionSettings>

  Settings to activate a static image overlay


=head2 StaticImageDeactivateSettings => L<Paws::MediaLive::StaticImageDeactivateScheduleActionSettings>

  Settings to deactivate a static image overlay



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


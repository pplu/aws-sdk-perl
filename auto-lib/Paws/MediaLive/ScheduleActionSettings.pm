package Paws::MediaLive::ScheduleActionSettings;
  use Moose;
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

  $service_obj->Method(Att1 => { Scte35ReturnToNetworkSettings => $value, ..., StaticImageDeactivateSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ScheduleActionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Scte35ReturnToNetworkSettings

=head1 DESCRIPTION

Settings for a single schedule action.

=head1 ATTRIBUTES


=head2 Scte35ReturnToNetworkSettings => L<Paws::MediaLive::Scte35ReturnToNetworkScheduleActionSettings>

  SCTE-35 Return to Network Settings


=head2 Scte35SpliceInsertSettings => L<Paws::MediaLive::Scte35SpliceInsertScheduleActionSettings>

  SCTE-35 Splice Insert Settings


=head2 Scte35TimeSignalSettings => L<Paws::MediaLive::Scte35TimeSignalScheduleActionSettings>

  SCTE-35 Time Signal Settings


=head2 StaticImageActivateSettings => L<Paws::MediaLive::StaticImageActivateScheduleActionSettings>

  Static Image Activate


=head2 StaticImageDeactivateSettings => L<Paws::MediaLive::StaticImageDeactivateScheduleActionSettings>

  Static Image Deactivate



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


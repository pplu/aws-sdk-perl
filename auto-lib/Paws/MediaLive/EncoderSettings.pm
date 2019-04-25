package Paws::MediaLive::EncoderSettings;
  use Moose;
  has AudioDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::AudioDescription]', request_name => 'audioDescriptions', traits => ['NameInRequest'], required => 1);
  has AvailBlanking => (is => 'ro', isa => 'Paws::MediaLive::AvailBlanking', request_name => 'availBlanking', traits => ['NameInRequest']);
  has AvailConfiguration => (is => 'ro', isa => 'Paws::MediaLive::AvailConfiguration', request_name => 'availConfiguration', traits => ['NameInRequest']);
  has BlackoutSlate => (is => 'ro', isa => 'Paws::MediaLive::BlackoutSlate', request_name => 'blackoutSlate', traits => ['NameInRequest']);
  has CaptionDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::CaptionDescription]', request_name => 'captionDescriptions', traits => ['NameInRequest']);
  has GlobalConfiguration => (is => 'ro', isa => 'Paws::MediaLive::GlobalConfiguration', request_name => 'globalConfiguration', traits => ['NameInRequest']);
  has OutputGroups => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::OutputGroup]', request_name => 'outputGroups', traits => ['NameInRequest'], required => 1);
  has TimecodeConfig => (is => 'ro', isa => 'Paws::MediaLive::TimecodeConfig', request_name => 'timecodeConfig', traits => ['NameInRequest'], required => 1);
  has VideoDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::VideoDescription]', request_name => 'videoDescriptions', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::EncoderSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::EncoderSettings object:

  $service_obj->Method(Att1 => { AudioDescriptions => $value, ..., VideoDescriptions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::EncoderSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioDescriptions

=head1 DESCRIPTION

Placeholder documentation for EncoderSettings

=head1 ATTRIBUTES


=head2 B<REQUIRED> AudioDescriptions => ArrayRef[L<Paws::MediaLive::AudioDescription>]

  


=head2 AvailBlanking => L<Paws::MediaLive::AvailBlanking>

  Settings for ad avail blanking.


=head2 AvailConfiguration => L<Paws::MediaLive::AvailConfiguration>

  Event-wide configuration settings for ad avail insertion.


=head2 BlackoutSlate => L<Paws::MediaLive::BlackoutSlate>

  Settings for blackout slate.


=head2 CaptionDescriptions => ArrayRef[L<Paws::MediaLive::CaptionDescription>]

  Settings for caption decriptions


=head2 GlobalConfiguration => L<Paws::MediaLive::GlobalConfiguration>

  Configuration settings that apply to the event as a whole.


=head2 B<REQUIRED> OutputGroups => ArrayRef[L<Paws::MediaLive::OutputGroup>]

  


=head2 B<REQUIRED> TimecodeConfig => L<Paws::MediaLive::TimecodeConfig>

  Contains settings used to acquire and adjust timecode information from
inputs.


=head2 B<REQUIRED> VideoDescriptions => ArrayRef[L<Paws::MediaLive::VideoDescription>]

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


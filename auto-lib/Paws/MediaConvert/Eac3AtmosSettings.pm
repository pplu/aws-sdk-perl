package Paws::MediaConvert::Eac3AtmosSettings;
  use Moose;
  has Bitrate => (is => 'ro', isa => 'Int', request_name => 'bitrate', traits => ['NameInRequest']);
  has BitstreamMode => (is => 'ro', isa => 'Str', request_name => 'bitstreamMode', traits => ['NameInRequest']);
  has CodingMode => (is => 'ro', isa => 'Str', request_name => 'codingMode', traits => ['NameInRequest']);
  has DialogueIntelligence => (is => 'ro', isa => 'Str', request_name => 'dialogueIntelligence', traits => ['NameInRequest']);
  has DynamicRangeCompressionLine => (is => 'ro', isa => 'Str', request_name => 'dynamicRangeCompressionLine', traits => ['NameInRequest']);
  has DynamicRangeCompressionRf => (is => 'ro', isa => 'Str', request_name => 'dynamicRangeCompressionRf', traits => ['NameInRequest']);
  has LoRoCenterMixLevel => (is => 'ro', isa => 'Num', request_name => 'loRoCenterMixLevel', traits => ['NameInRequest']);
  has LoRoSurroundMixLevel => (is => 'ro', isa => 'Num', request_name => 'loRoSurroundMixLevel', traits => ['NameInRequest']);
  has LtRtCenterMixLevel => (is => 'ro', isa => 'Num', request_name => 'ltRtCenterMixLevel', traits => ['NameInRequest']);
  has LtRtSurroundMixLevel => (is => 'ro', isa => 'Num', request_name => 'ltRtSurroundMixLevel', traits => ['NameInRequest']);
  has MeteringMode => (is => 'ro', isa => 'Str', request_name => 'meteringMode', traits => ['NameInRequest']);
  has SampleRate => (is => 'ro', isa => 'Int', request_name => 'sampleRate', traits => ['NameInRequest']);
  has SpeechThreshold => (is => 'ro', isa => 'Int', request_name => 'speechThreshold', traits => ['NameInRequest']);
  has StereoDownmix => (is => 'ro', isa => 'Str', request_name => 'stereoDownmix', traits => ['NameInRequest']);
  has SurroundExMode => (is => 'ro', isa => 'Str', request_name => 'surroundExMode', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Eac3AtmosSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Eac3AtmosSettings object:

  $service_obj->Method(Att1 => { Bitrate => $value, ..., SurroundExMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Eac3AtmosSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Bitrate

=head1 DESCRIPTION

Required when you set (Codec) under
(AudioDescriptions)E<gt>(CodecSettings) to the value EAC3_ATMOS.

=head1 ATTRIBUTES


=head2 Bitrate => Int

  Specify the average bitrate in bits per second. Valid values: 384k,
448k, 640k, 768k


=head2 BitstreamMode => Str

  Specify the bitstream mode for the E-AC-3 stream that the encoder
emits. For more information about the EAC3 bitstream mode, see ATSC
A/52-2012 (Annex E).


=head2 CodingMode => Str

  The coding mode for Dolby Digital Plus JOC (Atmos) is always 9.1.6
(CODING_MODE_9_1_6).


=head2 DialogueIntelligence => Str

  Enable Dolby Dialogue Intelligence to adjust loudness based on dialogue
analysis.


=head2 DynamicRangeCompressionLine => Str

  Specify the absolute peak level for a signal with dynamic range
compression.


=head2 DynamicRangeCompressionRf => Str

  Specify how the service limits the audio dynamic range when compressing
the audio.


=head2 LoRoCenterMixLevel => Num

  Specify a value for the following Dolby Atmos setting: Left only/Right
only center mix (Lo/Ro center). MediaConvert uses this value for
downmixing. How the service uses this value depends on the value that
you choose for Stereo downmix (Eac3AtmosStereoDownmix). Valid values:
3.0, 1.5, 0.0, -1.5, -3.0, -4.5, and -6.0.


=head2 LoRoSurroundMixLevel => Num

  Specify a value for the following Dolby Atmos setting: Left only/Right
only (Lo/Ro surround). MediaConvert uses this value for downmixing. How
the service uses this value depends on the value that you choose for
Stereo downmix (Eac3AtmosStereoDownmix). Valid values: -1.5, -3.0,
-4.5, -6.0, and -60. The value -60 mutes the channel.


=head2 LtRtCenterMixLevel => Num

  Specify a value for the following Dolby Atmos setting: Left total/Right
total center mix (Lt/Rt center). MediaConvert uses this value for
downmixing. How the service uses this value depends on the value that
you choose for Stereo downmix (Eac3AtmosStereoDownmix). Valid values:
3.0, 1.5, 0.0, -1.5, -3.0, -4.5, and -6.0.


=head2 LtRtSurroundMixLevel => Num

  Specify a value for the following Dolby Atmos setting: Left total/Right
total surround mix (Lt/Rt surround). MediaConvert uses this value for
downmixing. How the service uses this value depends on the value that
you choose for Stereo downmix (Eac3AtmosStereoDownmix). Valid values:
-1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel.


=head2 MeteringMode => Str

  Choose how the service meters the loudness of your audio.


=head2 SampleRate => Int

  This value is always 48000. It represents the sample rate in Hz.


=head2 SpeechThreshold => Int

  Specify the percentage of audio content that must be speech before the
encoder uses the measured speech loudness as the overall program
loudness.


=head2 StereoDownmix => Str

  Choose how the service does stereo downmixing.


=head2 SurroundExMode => Str

  Specify whether your input audio has an additional center rear surround
channel matrix encoded into your left and right surround channels.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


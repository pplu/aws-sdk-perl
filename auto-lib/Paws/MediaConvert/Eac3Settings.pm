package Paws::MediaConvert::Eac3Settings;
  use Moose;
  has AttenuationControl => (is => 'ro', isa => 'Str', request_name => 'attenuationControl', traits => ['NameInRequest']);
  has Bitrate => (is => 'ro', isa => 'Int', request_name => 'bitrate', traits => ['NameInRequest']);
  has BitstreamMode => (is => 'ro', isa => 'Str', request_name => 'bitstreamMode', traits => ['NameInRequest']);
  has CodingMode => (is => 'ro', isa => 'Str', request_name => 'codingMode', traits => ['NameInRequest']);
  has DcFilter => (is => 'ro', isa => 'Str', request_name => 'dcFilter', traits => ['NameInRequest']);
  has Dialnorm => (is => 'ro', isa => 'Int', request_name => 'dialnorm', traits => ['NameInRequest']);
  has DynamicRangeCompressionLine => (is => 'ro', isa => 'Str', request_name => 'dynamicRangeCompressionLine', traits => ['NameInRequest']);
  has DynamicRangeCompressionRf => (is => 'ro', isa => 'Str', request_name => 'dynamicRangeCompressionRf', traits => ['NameInRequest']);
  has LfeControl => (is => 'ro', isa => 'Str', request_name => 'lfeControl', traits => ['NameInRequest']);
  has LfeFilter => (is => 'ro', isa => 'Str', request_name => 'lfeFilter', traits => ['NameInRequest']);
  has LoRoCenterMixLevel => (is => 'ro', isa => 'Num', request_name => 'loRoCenterMixLevel', traits => ['NameInRequest']);
  has LoRoSurroundMixLevel => (is => 'ro', isa => 'Num', request_name => 'loRoSurroundMixLevel', traits => ['NameInRequest']);
  has LtRtCenterMixLevel => (is => 'ro', isa => 'Num', request_name => 'ltRtCenterMixLevel', traits => ['NameInRequest']);
  has LtRtSurroundMixLevel => (is => 'ro', isa => 'Num', request_name => 'ltRtSurroundMixLevel', traits => ['NameInRequest']);
  has MetadataControl => (is => 'ro', isa => 'Str', request_name => 'metadataControl', traits => ['NameInRequest']);
  has PassthroughControl => (is => 'ro', isa => 'Str', request_name => 'passthroughControl', traits => ['NameInRequest']);
  has PhaseControl => (is => 'ro', isa => 'Str', request_name => 'phaseControl', traits => ['NameInRequest']);
  has SampleRate => (is => 'ro', isa => 'Int', request_name => 'sampleRate', traits => ['NameInRequest']);
  has StereoDownmix => (is => 'ro', isa => 'Str', request_name => 'stereoDownmix', traits => ['NameInRequest']);
  has SurroundExMode => (is => 'ro', isa => 'Str', request_name => 'surroundExMode', traits => ['NameInRequest']);
  has SurroundMode => (is => 'ro', isa => 'Str', request_name => 'surroundMode', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Eac3Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Eac3Settings object:

  $service_obj->Method(Att1 => { AttenuationControl => $value, ..., SurroundMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Eac3Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->AttenuationControl

=head1 DESCRIPTION

Required when you set (Codec) under
(AudioDescriptions)E<gt>(CodecSettings) to the value EAC3.

=head1 ATTRIBUTES


=head2 AttenuationControl => Str

  If set to ATTENUATE_3_DB, applies a 3 dB attenuation to the surround
channels. Only used for 3/2 coding mode.


=head2 Bitrate => Int

  Average bitrate in bits/second. Valid bitrates depend on the coding
mode.


=head2 BitstreamMode => Str

  Specifies the "Bitstream Mode" (bsmod) for the emitted E-AC-3 stream.
See ATSC A/52-2012 (Annex E) for background on these values.


=head2 CodingMode => Str

  Dolby Digital Plus coding mode. Determines number of channels.


=head2 DcFilter => Str

  Activates a DC highpass filter for all input channels.


=head2 Dialnorm => Int

  Sets the dialnorm for the output. If blank and input audio is Dolby
Digital Plus, dialnorm will be passed through.


=head2 DynamicRangeCompressionLine => Str

  Enables Dynamic Range Compression that restricts the absolute peak
level for a signal.


=head2 DynamicRangeCompressionRf => Str

  Enables Heavy Dynamic Range Compression, ensures that the instantaneous
signal peaks do not exceed specified levels.


=head2 LfeControl => Str

  When encoding 3/2 audio, controls whether the LFE channel is enabled


=head2 LfeFilter => Str

  Applies a 120Hz lowpass filter to the LFE channel prior to encoding.
Only valid with 3_2_LFE coding mode.


=head2 LoRoCenterMixLevel => Num

  Left only/Right only center mix level. Only used for 3/2 coding mode.
Valid values: 3.0, 1.5, 0.0, -1.5 -3.0 -4.5 -6.0 -60


=head2 LoRoSurroundMixLevel => Num

  Left only/Right only surround mix level. Only used for 3/2 coding mode.
Valid values: -1.5 -3.0 -4.5 -6.0 -60


=head2 LtRtCenterMixLevel => Num

  Left total/Right total center mix level. Only used for 3/2 coding mode.
Valid values: 3.0, 1.5, 0.0, -1.5 -3.0 -4.5 -6.0 -60


=head2 LtRtSurroundMixLevel => Num

  Left total/Right total surround mix level. Only used for 3/2 coding
mode. Valid values: -1.5 -3.0 -4.5 -6.0 -60


=head2 MetadataControl => Str

  When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD,
DD+, or DolbyE decoder that supplied this audio data. If audio was not
supplied from one of these streams, then the static metadata settings
will be used.


=head2 PassthroughControl => Str

  When set to WHEN_POSSIBLE, input DD+ audio will be passed through if it
is present on the input. this detection is dynamic over the life of the
transcode. Inputs that alternate between DD+ and non-DD+ content will
have a consistent DD+ output as the system alternates between
passthrough and encoding.


=head2 PhaseControl => Str

  Controls the amount of phase-shift applied to the surround channels.
Only used for 3/2 coding mode.


=head2 SampleRate => Int

  Sample rate in hz. Sample rate is always 48000.


=head2 StereoDownmix => Str

  Stereo downmix preference. Only used for 3/2 coding mode.


=head2 SurroundExMode => Str

  When encoding 3/2 audio, sets whether an extra center back surround
channel is matrix encoded into the left and right surround channels.


=head2 SurroundMode => Str

  When encoding 2/0 audio, sets whether Dolby Surround is matrix encoded
into the two channels.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


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

  


=head2 Bitrate => Int

  Average bitrate in bits/second. Valid bitrates depend on the coding
mode.


=head2 BitstreamMode => Str

  


=head2 CodingMode => Str

  


=head2 DcFilter => Str

  


=head2 Dialnorm => Int

  Sets the dialnorm for the output. If blank and input audio is Dolby
Digital Plus, dialnorm will be passed through.


=head2 DynamicRangeCompressionLine => Str

  


=head2 DynamicRangeCompressionRf => Str

  


=head2 LfeControl => Str

  


=head2 LfeFilter => Str

  


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

  


=head2 PassthroughControl => Str

  


=head2 PhaseControl => Str

  


=head2 SampleRate => Int

  Sample rate in hz. Sample rate is always 48000.


=head2 StereoDownmix => Str

  


=head2 SurroundExMode => Str

  


=head2 SurroundMode => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


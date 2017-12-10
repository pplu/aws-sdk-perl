package Paws::MediaLive::AacSettings;
  use Moose;
  has Bitrate => (is => 'ro', isa => 'Num', request_name => 'bitrate', traits => ['NameInRequest']);
  has CodingMode => (is => 'ro', isa => 'Str', request_name => 'codingMode', traits => ['NameInRequest']);
  has InputType => (is => 'ro', isa => 'Str', request_name => 'inputType', traits => ['NameInRequest']);
  has Profile => (is => 'ro', isa => 'Str', request_name => 'profile', traits => ['NameInRequest']);
  has RateControlMode => (is => 'ro', isa => 'Str', request_name => 'rateControlMode', traits => ['NameInRequest']);
  has RawFormat => (is => 'ro', isa => 'Str', request_name => 'rawFormat', traits => ['NameInRequest']);
  has SampleRate => (is => 'ro', isa => 'Num', request_name => 'sampleRate', traits => ['NameInRequest']);
  has Spec => (is => 'ro', isa => 'Str', request_name => 'spec', traits => ['NameInRequest']);
  has VbrQuality => (is => 'ro', isa => 'Str', request_name => 'vbrQuality', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::AacSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::AacSettings object:

  $service_obj->Method(Att1 => { Bitrate => $value, ..., VbrQuality => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::AacSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Bitrate

=head1 DESCRIPTION

Placeholder documentation for AacSettings

=head1 ATTRIBUTES


=head2 Bitrate => Num

  Average bitrate in bits/second. Valid values depend on rate control
mode and profile.


=head2 CodingMode => Str

  Mono, Stereo, or 5.1 channel layout. Valid values depend on rate
control mode and profile. The adReceiverMix setting receives a stereo
description plus control track and emits a mono AAC encode of the
description track, with control data emitted in the PES header as per
ETSI TS 101 154 Annex E.


=head2 InputType => Str

  Set to "broadcasterMixedAd" when input contains pre-mixed main audio +
AD (narration) as a stereo pair. The Audio Type field (audioType) will
be set to 3, which signals to downstream systems that this stream
contains "broadcaster mixed AD". Note that the input received by the
encoder must contain pre-mixed audio; the encoder does not perform the
mixing. The values in audioTypeControl and audioType (in
AudioDescription) are ignored when set to broadcasterMixedAd. Leave set
to "normal" when input does not contain pre-mixed audio + AD.


=head2 Profile => Str

  AAC Profile.


=head2 RateControlMode => Str

  Rate Control Mode.


=head2 RawFormat => Str

  Sets LATM / LOAS AAC output for raw containers.


=head2 SampleRate => Num

  Sample rate in Hz. Valid values depend on rate control mode and
profile.


=head2 Spec => Str

  Use MPEG-2 AAC audio instead of MPEG-4 AAC audio for raw or MPEG-2
Transport Stream containers.


=head2 VbrQuality => Str

  VBR Quality Level - Only used if rateControlMode is VBR.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


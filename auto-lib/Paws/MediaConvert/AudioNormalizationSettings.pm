package Paws::MediaConvert::AudioNormalizationSettings;
  use Moose;
  has Algorithm => (is => 'ro', isa => 'Str', request_name => 'algorithm', traits => ['NameInRequest']);
  has AlgorithmControl => (is => 'ro', isa => 'Str', request_name => 'algorithmControl', traits => ['NameInRequest']);
  has CorrectionGateLevel => (is => 'ro', isa => 'Int', request_name => 'correctionGateLevel', traits => ['NameInRequest']);
  has LoudnessLogging => (is => 'ro', isa => 'Str', request_name => 'loudnessLogging', traits => ['NameInRequest']);
  has PeakCalculation => (is => 'ro', isa => 'Str', request_name => 'peakCalculation', traits => ['NameInRequest']);
  has TargetLkfs => (is => 'ro', isa => 'Num', request_name => 'targetLkfs', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::AudioNormalizationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::AudioNormalizationSettings object:

  $service_obj->Method(Att1 => { Algorithm => $value, ..., TargetLkfs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::AudioNormalizationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Algorithm

=head1 DESCRIPTION

Advanced audio normalization settings. Ignore these settings unless you
need to comply with a loudness standard.

=head1 ATTRIBUTES


=head2 Algorithm => Str

  Choose one of the following audio normalization algorithms: ITU-R
BS.1770-1: Ungated loudness. A measurement of ungated average loudness
for an entire piece of content, suitable for measurement of short-form
content under ATSC recommendation A/85. Supports up to 5.1 audio
channels. ITU-R BS.1770-2: Gated loudness. A measurement of gated
average loudness compliant with the requirements of EBU-R128. Supports
up to 5.1 audio channels. ITU-R BS.1770-3: Modified peak. The same
loudness measurement algorithm as 1770-2, with an updated true peak
measurement. ITU-R BS.1770-4: Higher channel count. Allows for more
audio channels than the other algorithms, including configurations such
as 7.1.


=head2 AlgorithmControl => Str

  When enabled the output audio is corrected using the chosen algorithm.
If disabled, the audio will be measured but not adjusted.


=head2 CorrectionGateLevel => Int

  Content measuring above this level will be corrected to the target
level. Content measuring below this level will not be corrected.


=head2 LoudnessLogging => Str

  If set to LOG, log each output's audio track loudness to a CSV file.


=head2 PeakCalculation => Str

  If set to TRUE_PEAK, calculate and log the TruePeak for each output's
audio track loudness.


=head2 TargetLkfs => Num

  When you use Audio normalization (AudioNormalizationSettings),
optionally use this setting to specify a target loudness. If you don't
specify a value here, the encoder chooses a value for you, based on the
algorithm that you choose for Algorithm (algorithm). If you choose
algorithm 1770-1, the encoder will choose -24 LKFS; otherwise, the
encoder will choose -23 LKFS.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


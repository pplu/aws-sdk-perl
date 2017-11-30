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

Advanced audio normalization settings.

=head1 ATTRIBUTES


=head2 Algorithm => Str

  


=head2 AlgorithmControl => Str

  


=head2 CorrectionGateLevel => Int

  Content measuring above this level will be corrected to the target
level. Content measuring below this level will not be corrected. Gating
only applies when not using real_time_correction.


=head2 LoudnessLogging => Str

  


=head2 PeakCalculation => Str

  


=head2 TargetLkfs => Num

  Target LKFS(loudness) to adjust volume to. If no value is entered, a
default value will be used according to the chosen algorithm. The CALM
Act (1770-1) recommends a target of -24 LKFS. The EBU R-128
specification (1770-2) recommends a target of -23 LKFS.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


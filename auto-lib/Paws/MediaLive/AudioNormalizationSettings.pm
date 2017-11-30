package Paws::MediaLive::AudioNormalizationSettings;
  use Moose;
  has Algorithm => (is => 'ro', isa => 'Str', request_name => 'algorithm', traits => ['NameInRequest']);
  has AlgorithmControl => (is => 'ro', isa => 'Str', request_name => 'algorithmControl', traits => ['NameInRequest']);
  has TargetLkfs => (is => 'ro', isa => 'Num', request_name => 'targetLkfs', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::AudioNormalizationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::AudioNormalizationSettings object:

  $service_obj->Method(Att1 => { Algorithm => $value, ..., TargetLkfs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::AudioNormalizationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Algorithm

=head1 DESCRIPTION

Placeholder documentation for AudioNormalizationSettings

=head1 ATTRIBUTES


=head2 Algorithm => Str

  Audio normalization algorithm to use. itu17701 conforms to the CALM Act
specification, itu17702 conforms to the EBU R-128 specification.


=head2 AlgorithmControl => Str

  When set to correctAudio the output audio is corrected using the chosen
algorithm. If set to measureOnly, the audio will be measured but not
adjusted.


=head2 TargetLkfs => Num

  Target LKFS(loudness) to adjust volume to. If no value is entered, a
default value will be used according to the chosen algorithm. The CALM
Act (1770-1) recommends a target of -24 LKFS. The EBU R-128
specification (1770-2) recommends a target of -23 LKFS.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


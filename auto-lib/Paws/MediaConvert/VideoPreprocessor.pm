package Paws::MediaConvert::VideoPreprocessor;
  use Moose;
  has ColorCorrector => (is => 'ro', isa => 'Paws::MediaConvert::ColorCorrector', request_name => 'colorCorrector', traits => ['NameInRequest']);
  has Deinterlacer => (is => 'ro', isa => 'Paws::MediaConvert::Deinterlacer', request_name => 'deinterlacer', traits => ['NameInRequest']);
  has ImageInserter => (is => 'ro', isa => 'Paws::MediaConvert::ImageInserter', request_name => 'imageInserter', traits => ['NameInRequest']);
  has NoiseReducer => (is => 'ro', isa => 'Paws::MediaConvert::NoiseReducer', request_name => 'noiseReducer', traits => ['NameInRequest']);
  has TimecodeBurnin => (is => 'ro', isa => 'Paws::MediaConvert::TimecodeBurnin', request_name => 'timecodeBurnin', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::VideoPreprocessor

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::VideoPreprocessor object:

  $service_obj->Method(Att1 => { ColorCorrector => $value, ..., TimecodeBurnin => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::VideoPreprocessor object:

  $result = $service_obj->Method(...);
  $result->Att1->ColorCorrector

=head1 DESCRIPTION

Find additional transcoding features under Preprocessors
(VideoPreprocessors). Enable the features at each output individually.
These features are disabled by default.

=head1 ATTRIBUTES


=head2 ColorCorrector => L<Paws::MediaConvert::ColorCorrector>

  Enable the Color corrector (ColorCorrector) feature if necessary.
Enable or disable this feature for each output individually. This
setting is disabled by default.


=head2 Deinterlacer => L<Paws::MediaConvert::Deinterlacer>

  Use Deinterlacer (Deinterlacer) to produce smoother motion and a
clearer picture.


=head2 ImageInserter => L<Paws::MediaConvert::ImageInserter>

  Enable the Image inserter (ImageInserter) feature to include a graphic
overlay on your video. Enable or disable this feature for each output
individually. This setting is disabled by default.


=head2 NoiseReducer => L<Paws::MediaConvert::NoiseReducer>

  Enable the Noise reducer (NoiseReducer) feature to remove noise from
your video output if necessary. Enable or disable this feature for each
output individually. This setting is disabled by default.


=head2 TimecodeBurnin => L<Paws::MediaConvert::TimecodeBurnin>

  Timecode burn-in (TimecodeBurnIn)--Burns the output timecode and
specified prefix into the output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


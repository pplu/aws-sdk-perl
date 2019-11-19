# Generated from default/object.tt
package Paws::MediaConvert::VideoPreprocessor;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaConvert::Types qw/MediaConvert_ImageInserter MediaConvert_Deinterlacer MediaConvert_ColorCorrector MediaConvert_NoiseReducer MediaConvert_TimecodeBurnin MediaConvert_DolbyVision/;
  has ColorCorrector => (is => 'ro', isa => MediaConvert_ColorCorrector);
  has Deinterlacer => (is => 'ro', isa => MediaConvert_Deinterlacer);
  has DolbyVision => (is => 'ro', isa => MediaConvert_DolbyVision);
  has ImageInserter => (is => 'ro', isa => MediaConvert_ImageInserter);
  has NoiseReducer => (is => 'ro', isa => MediaConvert_NoiseReducer);
  has TimecodeBurnin => (is => 'ro', isa => MediaConvert_TimecodeBurnin);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NoiseReducer' => {
                                   'class' => 'Paws::MediaConvert::NoiseReducer',
                                   'type' => 'MediaConvert_NoiseReducer'
                                 },
               'TimecodeBurnin' => {
                                     'type' => 'MediaConvert_TimecodeBurnin',
                                     'class' => 'Paws::MediaConvert::TimecodeBurnin'
                                   },
               'ColorCorrector' => {
                                     'type' => 'MediaConvert_ColorCorrector',
                                     'class' => 'Paws::MediaConvert::ColorCorrector'
                                   },
               'Deinterlacer' => {
                                   'type' => 'MediaConvert_Deinterlacer',
                                   'class' => 'Paws::MediaConvert::Deinterlacer'
                                 },
               'DolbyVision' => {
                                  'type' => 'MediaConvert_DolbyVision',
                                  'class' => 'Paws::MediaConvert::DolbyVision'
                                },
               'ImageInserter' => {
                                    'class' => 'Paws::MediaConvert::ImageInserter',
                                    'type' => 'MediaConvert_ImageInserter'
                                  }
             },
  'NameInRequest' => {
                       'ColorCorrector' => 'colorCorrector',
                       'Deinterlacer' => 'deinterlacer',
                       'ImageInserter' => 'imageInserter',
                       'DolbyVision' => 'dolbyVision',
                       'NoiseReducer' => 'noiseReducer',
                       'TimecodeBurnin' => 'timecodeBurnin'
                     }
}
;
    return $Params_map;
  }


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


=head2 ColorCorrector => MediaConvert_ColorCorrector

  Enable the Color corrector (ColorCorrector) feature if necessary.
Enable or disable this feature for each output individually. This
setting is disabled by default.


=head2 Deinterlacer => MediaConvert_Deinterlacer

  Use Deinterlacer (Deinterlacer) to produce smoother motion and a
clearer picture.


=head2 DolbyVision => MediaConvert_DolbyVision

  Enable Dolby Vision feature to produce Dolby Vision compatible video
output.


=head2 ImageInserter => MediaConvert_ImageInserter

  Enable the Image inserter (ImageInserter) feature to include a graphic
overlay on your video. Enable or disable this feature for each output
individually. This setting is disabled by default.


=head2 NoiseReducer => MediaConvert_NoiseReducer

  Enable the Noise reducer (NoiseReducer) feature to remove noise from
your video output if necessary. Enable or disable this feature for each
output individually. This setting is disabled by default.


=head2 TimecodeBurnin => MediaConvert_TimecodeBurnin

  Timecode burn-in (TimecodeBurnIn)--Burns the output timecode and
specified prefix into the output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


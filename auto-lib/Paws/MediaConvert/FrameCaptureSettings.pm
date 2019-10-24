# Generated from default/object.tt
package Paws::MediaConvert::FrameCaptureSettings;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::MediaConvert::Types qw//;
  has FramerateDenominator => (is => 'ro', isa => Int);
  has FramerateNumerator => (is => 'ro', isa => Int);
  has MaxCaptures => (is => 'ro', isa => Int);
  has Quality => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Quality' => {
                              'type' => 'Int'
                            },
               'FramerateDenominator' => {
                                           'type' => 'Int'
                                         },
               'MaxCaptures' => {
                                  'type' => 'Int'
                                },
               'FramerateNumerator' => {
                                         'type' => 'Int'
                                       }
             },
  'NameInRequest' => {
                       'Quality' => 'quality',
                       'FramerateDenominator' => 'framerateDenominator',
                       'MaxCaptures' => 'maxCaptures',
                       'FramerateNumerator' => 'framerateNumerator'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::FrameCaptureSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::FrameCaptureSettings object:

  $service_obj->Method(Att1 => { FramerateDenominator => $value, ..., Quality => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::FrameCaptureSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->FramerateDenominator

=head1 DESCRIPTION

Required when you set (Codec) under
(VideoDescription)E<gt>(CodecSettings) to the value FRAME_CAPTURE.

=head1 ATTRIBUTES


=head2 FramerateDenominator => Int

  Frame capture will encode the first frame of the output stream, then
one frame every framerateDenominator/framerateNumerator seconds. For
example, settings of framerateNumerator = 1 and framerateDenominator =
3 (a rate of 1/3 frame per second) will capture the first frame, then 1
frame every 3s. Files will be named as filename.n.jpg where n is the
0-based sequence number of each Capture.


=head2 FramerateNumerator => Int

  Frame capture will encode the first frame of the output stream, then
one frame every framerateDenominator/framerateNumerator seconds. For
example, settings of framerateNumerator = 1 and framerateDenominator =
3 (a rate of 1/3 frame per second) will capture the first frame, then 1
frame every 3s. Files will be named as filename.NNNNNNN.jpg where N is
the 0-based frame sequence number zero padded to 7 decimal places.


=head2 MaxCaptures => Int

  Maximum number of captures (encoded jpg output files).


=head2 Quality => Int

  JPEG Quality - a higher value equals higher quality.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


package Paws::MediaConvert::Deinterlacer;
  use Moose;
  has Algorithm => (is => 'ro', isa => 'Str', request_name => 'algorithm', traits => ['NameInRequest']);
  has Control => (is => 'ro', isa => 'Str', request_name => 'control', traits => ['NameInRequest']);
  has Mode => (is => 'ro', isa => 'Str', request_name => 'mode', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Deinterlacer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Deinterlacer object:

  $service_obj->Method(Att1 => { Algorithm => $value, ..., Mode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Deinterlacer object:

  $result = $service_obj->Method(...);
  $result->Att1->Algorithm

=head1 DESCRIPTION

Settings for deinterlacer

=head1 ATTRIBUTES


=head2 Algorithm => Str

  Only applies when you set Deinterlacer (DeinterlaceMode) to Deinterlace
(DEINTERLACE) or Adaptive (ADAPTIVE). Motion adaptive interpolate
(INTERPOLATE) produces sharper pictures, while blend (BLEND) produces
smoother motion. Use (INTERPOLATE_TICKER) OR (BLEND_TICKER) if your
source file includes a ticker, such as a scrolling headline at the
bottom of the frame.


=head2 Control => Str

  - When set to NORMAL (default), the deinterlacer does not convert
frames that are tagged in metadata as progressive. It will only convert
those that are tagged as some other type. - When set to
FORCE_ALL_FRAMES, the deinterlacer converts every frame to progressive
- even those that are already tagged as progressive. Turn Force mode on
only if there is a good chance that the metadata has tagged frames as
progressive when they are not progressive. Do not turn on otherwise;
processing frames that are already progressive into progressive will
probably result in lower quality video.


=head2 Mode => Str

  Use Deinterlacer (DeinterlaceMode) to choose how the service will do
deinterlacing. Default is Deinterlace. - Deinterlace converts
interlaced to progressive. - Inverse telecine converts Hard Telecine
29.97i to progressive 23.976p. - Adaptive auto-detects and converts to
progressive.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


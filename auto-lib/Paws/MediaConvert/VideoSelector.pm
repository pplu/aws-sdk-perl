package Paws::MediaConvert::VideoSelector;
  use Moose;
  has AlphaBehavior => (is => 'ro', isa => 'Str', request_name => 'alphaBehavior', traits => ['NameInRequest']);
  has ColorSpace => (is => 'ro', isa => 'Str', request_name => 'colorSpace', traits => ['NameInRequest']);
  has ColorSpaceUsage => (is => 'ro', isa => 'Str', request_name => 'colorSpaceUsage', traits => ['NameInRequest']);
  has Hdr10Metadata => (is => 'ro', isa => 'Paws::MediaConvert::Hdr10Metadata', request_name => 'hdr10Metadata', traits => ['NameInRequest']);
  has Pid => (is => 'ro', isa => 'Int', request_name => 'pid', traits => ['NameInRequest']);
  has ProgramNumber => (is => 'ro', isa => 'Int', request_name => 'programNumber', traits => ['NameInRequest']);
  has Rotate => (is => 'ro', isa => 'Str', request_name => 'rotate', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::VideoSelector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::VideoSelector object:

  $service_obj->Method(Att1 => { AlphaBehavior => $value, ..., Rotate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::VideoSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->AlphaBehavior

=head1 DESCRIPTION

Selector for video.

=head1 ATTRIBUTES


=head2 AlphaBehavior => Str

  Ignore this setting unless this input is a QuickTime animation. Specify
which part of this input MediaConvert uses for your outputs. Leave this
setting set to DISCARD in order to delete the alpha channel and
preserve the video. Use REMAP_TO_LUMA for this setting to delete the
video and map the alpha channel to the luma channel of your outputs.


=head2 ColorSpace => Str

  If your input video has accurate color space metadata, or if you don't
know about color space, leave this set to the default value Follow
(FOLLOW). The service will automatically detect your input color space.
If your input video has metadata indicating the wrong color space,
specify the accurate color space here. If your input video is HDR 10
and the SMPTE ST 2086 Mastering Display Color Volume static metadata
isn't present in your video stream, or if that metadata is present but
not accurate, choose Force HDR 10 (FORCE_HDR10) here and specify
correct values in the input HDR 10 metadata (Hdr10Metadata) settings.
For more information about MediaConvert HDR jobs, see
https://docs.aws.amazon.com/console/mediaconvert/hdr.


=head2 ColorSpaceUsage => Str

  There are two sources for color metadata, the input file and the job
input settings Color space (ColorSpace) and HDR master display
information settings(Hdr10Metadata). The Color space usage setting
determines which takes precedence. Choose Force (FORCE) to use color
metadata from the input job settings. If you don't specify values for
those settings, the service defaults to using metadata from your input.
FALLBACK - Choose Fallback (FALLBACK) to use color metadata from the
source when it is present. If there's no color metadata in your input
file, the service defaults to using values you specify in the input
settings.


=head2 Hdr10Metadata => L<Paws::MediaConvert::Hdr10Metadata>

  Use these settings to provide HDR 10 metadata that is missing or
inaccurate in your input video. Appropriate values vary depending on
the input video and must be provided by a color grader. The color
grader generates these values during the HDR 10 mastering process. The
valid range for each of these settings is 0 to 50,000. Each increment
represents 0.00002 in CIE1931 color coordinate. Related settings - When
you specify these values, you must also set Color space (ColorSpace) to
HDR 10 (HDR10). To specify whether the the values you specify here take
precedence over the values in the metadata of your input file, set
Color space usage (ColorSpaceUsage). To specify whether color metadata
is included in an output, set Color metadata (ColorMetadata). For more
information about MediaConvert HDR jobs, see
https://docs.aws.amazon.com/console/mediaconvert/hdr.


=head2 Pid => Int

  Use PID (Pid) to select specific video data from an input file. Specify
this value as an integer; the system automatically converts it to the
hexidecimal value. For example, 257 selects PID 0x101. A PID, or packet
identifier, is an identifier for a set of data in an MPEG-2 transport
stream container.


=head2 ProgramNumber => Int

  Selects a specific program from within a multi-program transport
stream. Note that Quad 4K is not currently supported.


=head2 Rotate => Str

  Use Rotate (InputRotate) to specify how the service rotates your video.
You can choose automatic rotation or specify a rotation. You can
specify a clockwise rotation of 0, 90, 180, or 270 degrees. If your
input video container is .mov or .mp4 and your input has rotation
metadata, you can choose Automatic to have the service rotate your
video according to the rotation specified in the metadata. The rotation
must be within one degree of 90, 180, or 270 degrees. If the rotation
metadata specifies any other rotation, the service will default to no
rotation. By default, the service does no rotation, even if your input
video has rotation metadata. The service doesn't pass through rotation
metadata.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


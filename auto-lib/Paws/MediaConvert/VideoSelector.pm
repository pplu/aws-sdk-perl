package Paws::MediaConvert::VideoSelector;
  use Moose;
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

  $service_obj->Method(Att1 => { ColorSpace => $value, ..., Rotate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::VideoSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->ColorSpace

=head1 DESCRIPTION

Selector for video.

=head1 ATTRIBUTES


=head2 ColorSpace => Str

  If your input video has accurate color space metadata, or if you don't
know about color space, leave this set to the default value FOLLOW. The
service will automatically detect your input color space. If your input
video has metadata indicating the wrong color space, or if your input
video is missing color space metadata that should be there, specify the
accurate color space here. If you choose HDR10, you can also correct
inaccurate color space coefficients, using the HDR master display
information controls. You must also set Color space usage
(ColorSpaceUsage) to FORCE for the service to use these values.


=head2 ColorSpaceUsage => Str

  There are two sources for color metadata, the input file and the job
configuration (in the Color space and HDR master display informaiton
settings). The Color space usage setting controls which takes
precedence. FORCE: The system will use color metadata supplied by user,
if any. If the user does not supply color metadata, the system will use
data from the source. FALLBACK: The system will use color metadata from
the source. If source has no color metadata, the system will use
user-supplied color metadata values if available.


=head2 Hdr10Metadata => L<Paws::MediaConvert::Hdr10Metadata>

  Use the "HDR master display information" (Hdr10Metadata) settings to
correct HDR metadata or to provide missing metadata. These values vary
depending on the input video and must be provided by a color grader.
Range is 0 to 50,000; each increment represents 0.00002 in CIE1931
color coordinate. Note that these settings are not color correction.
Note that if you are creating HDR outputs inside of an HLS CMAF
package, to comply with the Apple specification, you must use the
following settings. Set "MP4 packaging type" (writeMp4PackagingType) to
HVC1 (HVC1). Set "Profile" (H265Settings E<gt> codecProfile) to
Main10/High (MAIN10_HIGH). Set "Level" (H265Settings E<gt> codecLevel)
to 5 (LEVEL_5).


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


package Paws::MediaConvert::Hdr10Metadata;
  use Moose;
  has BluePrimaryX => (is => 'ro', isa => 'Int', request_name => 'bluePrimaryX', traits => ['NameInRequest']);
  has BluePrimaryY => (is => 'ro', isa => 'Int', request_name => 'bluePrimaryY', traits => ['NameInRequest']);
  has GreenPrimaryX => (is => 'ro', isa => 'Int', request_name => 'greenPrimaryX', traits => ['NameInRequest']);
  has GreenPrimaryY => (is => 'ro', isa => 'Int', request_name => 'greenPrimaryY', traits => ['NameInRequest']);
  has MaxContentLightLevel => (is => 'ro', isa => 'Int', request_name => 'maxContentLightLevel', traits => ['NameInRequest']);
  has MaxFrameAverageLightLevel => (is => 'ro', isa => 'Int', request_name => 'maxFrameAverageLightLevel', traits => ['NameInRequest']);
  has MaxLuminance => (is => 'ro', isa => 'Int', request_name => 'maxLuminance', traits => ['NameInRequest']);
  has MinLuminance => (is => 'ro', isa => 'Int', request_name => 'minLuminance', traits => ['NameInRequest']);
  has RedPrimaryX => (is => 'ro', isa => 'Int', request_name => 'redPrimaryX', traits => ['NameInRequest']);
  has RedPrimaryY => (is => 'ro', isa => 'Int', request_name => 'redPrimaryY', traits => ['NameInRequest']);
  has WhitePointX => (is => 'ro', isa => 'Int', request_name => 'whitePointX', traits => ['NameInRequest']);
  has WhitePointY => (is => 'ro', isa => 'Int', request_name => 'whitePointY', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Hdr10Metadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Hdr10Metadata object:

  $service_obj->Method(Att1 => { BluePrimaryX => $value, ..., WhitePointY => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Hdr10Metadata object:

  $result = $service_obj->Method(...);
  $result->Att1->BluePrimaryX

=head1 DESCRIPTION

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

=head1 ATTRIBUTES


=head2 BluePrimaryX => Int

  HDR Master Display Information must be provided by a color grader,
using color grading tools. Range is 0 to 50,000, each increment
represents 0.00002 in CIE1931 color coordinate. Note that this setting
is not for color correction.


=head2 BluePrimaryY => Int

  HDR Master Display Information must be provided by a color grader,
using color grading tools. Range is 0 to 50,000, each increment
represents 0.00002 in CIE1931 color coordinate. Note that this setting
is not for color correction.


=head2 GreenPrimaryX => Int

  HDR Master Display Information must be provided by a color grader,
using color grading tools. Range is 0 to 50,000, each increment
represents 0.00002 in CIE1931 color coordinate. Note that this setting
is not for color correction.


=head2 GreenPrimaryY => Int

  HDR Master Display Information must be provided by a color grader,
using color grading tools. Range is 0 to 50,000, each increment
represents 0.00002 in CIE1931 color coordinate. Note that this setting
is not for color correction.


=head2 MaxContentLightLevel => Int

  Maximum light level among all samples in the coded video sequence, in
units of candelas per square meter.


=head2 MaxFrameAverageLightLevel => Int

  Maximum average light level of any frame in the coded video sequence,
in units of candelas per square meter.


=head2 MaxLuminance => Int

  Nominal maximum mastering display luminance in units of of 0.0001
candelas per square meter.


=head2 MinLuminance => Int

  Nominal minimum mastering display luminance in units of of 0.0001
candelas per square meter


=head2 RedPrimaryX => Int

  HDR Master Display Information must be provided by a color grader,
using color grading tools. Range is 0 to 50,000, each increment
represents 0.00002 in CIE1931 color coordinate. Note that this setting
is not for color correction.


=head2 RedPrimaryY => Int

  HDR Master Display Information must be provided by a color grader,
using color grading tools. Range is 0 to 50,000, each increment
represents 0.00002 in CIE1931 color coordinate. Note that this setting
is not for color correction.


=head2 WhitePointX => Int

  HDR Master Display Information must be provided by a color grader,
using color grading tools. Range is 0 to 50,000, each increment
represents 0.00002 in CIE1931 color coordinate. Note that this setting
is not for color correction.


=head2 WhitePointY => Int

  HDR Master Display Information must be provided by a color grader,
using color grading tools. Range is 0 to 50,000, each increment
represents 0.00002 in CIE1931 color coordinate. Note that this setting
is not for color correction.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


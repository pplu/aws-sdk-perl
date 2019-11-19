# Generated from default/object.tt
package Paws::MediaConvert::Hdr10Metadata;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::MediaConvert::Types qw//;
  has BluePrimaryX => (is => 'ro', isa => Int);
  has BluePrimaryY => (is => 'ro', isa => Int);
  has GreenPrimaryX => (is => 'ro', isa => Int);
  has GreenPrimaryY => (is => 'ro', isa => Int);
  has MaxContentLightLevel => (is => 'ro', isa => Int);
  has MaxFrameAverageLightLevel => (is => 'ro', isa => Int);
  has MaxLuminance => (is => 'ro', isa => Int);
  has MinLuminance => (is => 'ro', isa => Int);
  has RedPrimaryX => (is => 'ro', isa => Int);
  has RedPrimaryY => (is => 'ro', isa => Int);
  has WhitePointX => (is => 'ro', isa => Int);
  has WhitePointY => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxFrameAverageLightLevel' => {
                                                'type' => 'Int'
                                              },
               'MaxContentLightLevel' => {
                                           'type' => 'Int'
                                         },
               'WhitePointX' => {
                                  'type' => 'Int'
                                },
               'RedPrimaryY' => {
                                  'type' => 'Int'
                                },
               'MaxLuminance' => {
                                   'type' => 'Int'
                                 },
               'MinLuminance' => {
                                   'type' => 'Int'
                                 },
               'GreenPrimaryX' => {
                                    'type' => 'Int'
                                  },
               'GreenPrimaryY' => {
                                    'type' => 'Int'
                                  },
               'WhitePointY' => {
                                  'type' => 'Int'
                                },
               'RedPrimaryX' => {
                                  'type' => 'Int'
                                },
               'BluePrimaryX' => {
                                   'type' => 'Int'
                                 },
               'BluePrimaryY' => {
                                   'type' => 'Int'
                                 }
             },
  'NameInRequest' => {
                       'MinLuminance' => 'minLuminance',
                       'GreenPrimaryX' => 'greenPrimaryX',
                       'RedPrimaryY' => 'redPrimaryY',
                       'MaxLuminance' => 'maxLuminance',
                       'MaxContentLightLevel' => 'maxContentLightLevel',
                       'WhitePointX' => 'whitePointX',
                       'MaxFrameAverageLightLevel' => 'maxFrameAverageLightLevel',
                       'BluePrimaryX' => 'bluePrimaryX',
                       'BluePrimaryY' => 'bluePrimaryY',
                       'RedPrimaryX' => 'redPrimaryX',
                       'GreenPrimaryY' => 'greenPrimaryY',
                       'WhitePointY' => 'whitePointY'
                     }
}
;
    return $Params_map;
  }


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

Use these settings to specify static color calibration metadata, as
defined by SMPTE ST 2086. These values don't affect the pixel values
that are encoded in the video stream. They are intended to help the
downstream video player display content in a way that reflects the
intentions of the the content creator.

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
units of candelas per square meter. This setting doesn't have a default
value; you must specify a value that is suitable for the content.


=head2 MaxFrameAverageLightLevel => Int

  Maximum average light level of any frame in the coded video sequence,
in units of candelas per square meter. This setting doesn't have a
default value; you must specify a value that is suitable for the
content.


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


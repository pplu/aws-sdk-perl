package Paws::MediaConvert::ColorCorrector;
  use Moose;
  has Brightness => (is => 'ro', isa => 'Int', request_name => 'brightness', traits => ['NameInRequest']);
  has ColorSpaceConversion => (is => 'ro', isa => 'Str', request_name => 'colorSpaceConversion', traits => ['NameInRequest']);
  has Contrast => (is => 'ro', isa => 'Int', request_name => 'contrast', traits => ['NameInRequest']);
  has Hdr10Metadata => (is => 'ro', isa => 'Paws::MediaConvert::Hdr10Metadata', request_name => 'hdr10Metadata', traits => ['NameInRequest']);
  has Hue => (is => 'ro', isa => 'Int', request_name => 'hue', traits => ['NameInRequest']);
  has Saturation => (is => 'ro', isa => 'Int', request_name => 'saturation', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ColorCorrector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::ColorCorrector object:

  $service_obj->Method(Att1 => { Brightness => $value, ..., Saturation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::ColorCorrector object:

  $result = $service_obj->Method(...);
  $result->Att1->Brightness

=head1 DESCRIPTION

Settings for color correction.

=head1 ATTRIBUTES


=head2 Brightness => Int

  Brightness level.


=head2 ColorSpaceConversion => Str

  


=head2 Contrast => Int

  Contrast level.


=head2 Hdr10Metadata => L<Paws::MediaConvert::Hdr10Metadata>

  Use the HDR master display (Hdr10Metadata) settings to correct HDR
metadata or to provide missing metadata. Note that these settings are
not color correction.


=head2 Hue => Int

  Hue in degrees.


=head2 Saturation => Int

  Saturation level.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


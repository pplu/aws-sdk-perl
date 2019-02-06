package Paws::MediaConvert::ProresSettings;
  use Moose;
  has CodecProfile => (is => 'ro', isa => 'Str', request_name => 'codecProfile', traits => ['NameInRequest']);
  has FramerateControl => (is => 'ro', isa => 'Str', request_name => 'framerateControl', traits => ['NameInRequest']);
  has FramerateConversionAlgorithm => (is => 'ro', isa => 'Str', request_name => 'framerateConversionAlgorithm', traits => ['NameInRequest']);
  has FramerateDenominator => (is => 'ro', isa => 'Int', request_name => 'framerateDenominator', traits => ['NameInRequest']);
  has FramerateNumerator => (is => 'ro', isa => 'Int', request_name => 'framerateNumerator', traits => ['NameInRequest']);
  has InterlaceMode => (is => 'ro', isa => 'Str', request_name => 'interlaceMode', traits => ['NameInRequest']);
  has ParControl => (is => 'ro', isa => 'Str', request_name => 'parControl', traits => ['NameInRequest']);
  has ParDenominator => (is => 'ro', isa => 'Int', request_name => 'parDenominator', traits => ['NameInRequest']);
  has ParNumerator => (is => 'ro', isa => 'Int', request_name => 'parNumerator', traits => ['NameInRequest']);
  has SlowPal => (is => 'ro', isa => 'Str', request_name => 'slowPal', traits => ['NameInRequest']);
  has Telecine => (is => 'ro', isa => 'Str', request_name => 'telecine', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ProresSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::ProresSettings object:

  $service_obj->Method(Att1 => { CodecProfile => $value, ..., Telecine => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::ProresSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->CodecProfile

=head1 DESCRIPTION

Required when you set (Codec) under
(VideoDescription)E<gt>(CodecSettings) to the value PRORES.

=head1 ATTRIBUTES


=head2 CodecProfile => Str

  


=head2 FramerateControl => Str

  


=head2 FramerateConversionAlgorithm => Str

  


=head2 FramerateDenominator => Int

  Frame rate denominator.


=head2 FramerateNumerator => Int

  When you use the API for transcode jobs that use frame rate conversion,
specify the frame rate as a fraction. For example, 24000 / 1001 =
23.976 fps. Use FramerateNumerator to specify the numerator of this
fraction. In this example, use 24000 for the value of
FramerateNumerator.


=head2 InterlaceMode => Str

  


=head2 ParControl => Str

  


=head2 ParDenominator => Int

  Pixel Aspect Ratio denominator.


=head2 ParNumerator => Int

  Pixel Aspect Ratio numerator.


=head2 SlowPal => Str

  


=head2 Telecine => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


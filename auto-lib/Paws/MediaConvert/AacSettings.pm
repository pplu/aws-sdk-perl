package Paws::MediaConvert::AacSettings;
  use Moose;
  has AudioDescriptionBroadcasterMix => (is => 'ro', isa => 'Str', request_name => 'audioDescriptionBroadcasterMix', traits => ['NameInRequest']);
  has Bitrate => (is => 'ro', isa => 'Int', request_name => 'bitrate', traits => ['NameInRequest']);
  has CodecProfile => (is => 'ro', isa => 'Str', request_name => 'codecProfile', traits => ['NameInRequest']);
  has CodingMode => (is => 'ro', isa => 'Str', request_name => 'codingMode', traits => ['NameInRequest']);
  has RateControlMode => (is => 'ro', isa => 'Str', request_name => 'rateControlMode', traits => ['NameInRequest']);
  has RawFormat => (is => 'ro', isa => 'Str', request_name => 'rawFormat', traits => ['NameInRequest']);
  has SampleRate => (is => 'ro', isa => 'Int', request_name => 'sampleRate', traits => ['NameInRequest']);
  has Specification => (is => 'ro', isa => 'Str', request_name => 'specification', traits => ['NameInRequest']);
  has VbrQuality => (is => 'ro', isa => 'Str', request_name => 'vbrQuality', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::AacSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::AacSettings object:

  $service_obj->Method(Att1 => { AudioDescriptionBroadcasterMix => $value, ..., VbrQuality => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::AacSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioDescriptionBroadcasterMix

=head1 DESCRIPTION

Required when you set (Codec) under
(AudioDescriptions)E<gt>(CodecSettings) to the value AAC.

=head1 ATTRIBUTES


=head2 AudioDescriptionBroadcasterMix => Str

  


=head2 Bitrate => Int

  Average bitrate in bits/second. Valid values depend on rate control
mode and profile.


=head2 CodecProfile => Str

  


=head2 CodingMode => Str

  


=head2 RateControlMode => Str

  


=head2 RawFormat => Str

  


=head2 SampleRate => Int

  Sample rate in Hz. Valid values depend on rate control mode and
profile.


=head2 Specification => Str

  


=head2 VbrQuality => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


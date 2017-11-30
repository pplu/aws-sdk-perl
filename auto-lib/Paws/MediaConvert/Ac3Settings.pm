package Paws::MediaConvert::Ac3Settings;
  use Moose;
  has Bitrate => (is => 'ro', isa => 'Int', request_name => 'bitrate', traits => ['NameInRequest']);
  has BitstreamMode => (is => 'ro', isa => 'Str', request_name => 'bitstreamMode', traits => ['NameInRequest']);
  has CodingMode => (is => 'ro', isa => 'Str', request_name => 'codingMode', traits => ['NameInRequest']);
  has Dialnorm => (is => 'ro', isa => 'Int', request_name => 'dialnorm', traits => ['NameInRequest']);
  has DynamicRangeCompressionProfile => (is => 'ro', isa => 'Str', request_name => 'dynamicRangeCompressionProfile', traits => ['NameInRequest']);
  has LfeFilter => (is => 'ro', isa => 'Str', request_name => 'lfeFilter', traits => ['NameInRequest']);
  has MetadataControl => (is => 'ro', isa => 'Str', request_name => 'metadataControl', traits => ['NameInRequest']);
  has SampleRate => (is => 'ro', isa => 'Int', request_name => 'sampleRate', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Ac3Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Ac3Settings object:

  $service_obj->Method(Att1 => { Bitrate => $value, ..., SampleRate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Ac3Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->Bitrate

=head1 DESCRIPTION

Required when you set (Codec) under
(AudioDescriptions)E<gt>(CodecSettings) to the value AC3.

=head1 ATTRIBUTES


=head2 Bitrate => Int

  Average bitrate in bits/second. Valid bitrates depend on the coding
mode.


=head2 BitstreamMode => Str

  


=head2 CodingMode => Str

  


=head2 Dialnorm => Int

  Sets the dialnorm for the output. If blank and input audio is Dolby
Digital, dialnorm will be passed through.


=head2 DynamicRangeCompressionProfile => Str

  


=head2 LfeFilter => Str

  


=head2 MetadataControl => Str

  


=head2 SampleRate => Int

  Sample rate in hz. Sample rate is always 48000.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


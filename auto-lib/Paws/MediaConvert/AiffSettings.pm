package Paws::MediaConvert::AiffSettings;
  use Moose;
  has BitDepth => (is => 'ro', isa => 'Int', request_name => 'bitDepth', traits => ['NameInRequest']);
  has Channels => (is => 'ro', isa => 'Int', request_name => 'channels', traits => ['NameInRequest']);
  has SampleRate => (is => 'ro', isa => 'Int', request_name => 'sampleRate', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::AiffSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::AiffSettings object:

  $service_obj->Method(Att1 => { BitDepth => $value, ..., SampleRate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::AiffSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->BitDepth

=head1 DESCRIPTION

Required when you set (Codec) under
(AudioDescriptions)E<gt>(CodecSettings) to the value AIFF.

=head1 ATTRIBUTES


=head2 BitDepth => Int

  Specify Bit depth (BitDepth), in bits per sample, to choose the
encoding quality for this audio track.


=head2 Channels => Int

  Specify the number of channels in this output audio track. Valid values
are 1 and even numbers up to 64. For example, 1, 2, 4, 6, and so on, up
to 64.


=head2 SampleRate => Int

  Sample rate in hz.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


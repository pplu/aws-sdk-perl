# Generated by default/object.tt
package Paws::MediaLive::WavSettings;
  use Moose;
  has BitDepth => (is => 'ro', isa => 'Num', request_name => 'bitDepth', traits => ['NameInRequest']);
  has CodingMode => (is => 'ro', isa => 'Str', request_name => 'codingMode', traits => ['NameInRequest']);
  has SampleRate => (is => 'ro', isa => 'Num', request_name => 'sampleRate', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::WavSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::WavSettings object:

  $service_obj->Method(Att1 => { BitDepth => $value, ..., SampleRate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::WavSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->BitDepth

=head1 DESCRIPTION

Wav Settings

=head1 ATTRIBUTES


=head2 BitDepth => Num

Bits per sample.


=head2 CodingMode => Str

The audio coding mode for the WAV audio. The mode determines the number
of channels in the audio.


=head2 SampleRate => Num

Sample rate in Hz.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


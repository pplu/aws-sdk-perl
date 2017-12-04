package Paws::ElasticTranscoder::AudioCodecOptions;
  use Moose;
  has BitDepth => (is => 'ro', isa => 'Str');
  has BitOrder => (is => 'ro', isa => 'Str');
  has Profile => (is => 'ro', isa => 'Str');
  has Signed => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::AudioCodecOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::AudioCodecOptions object:

  $service_obj->Method(Att1 => { BitDepth => $value, ..., Signed => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::AudioCodecOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->BitDepth

=head1 DESCRIPTION

Options associated with your audio codec.

=head1 ATTRIBUTES


=head2 BitDepth => Str

  You can only choose an audio bit depth when you specify C<flac> or
C<pcm> for the value of Audio:Codec.

The bit depth of a sample is how many bits of information are included
in the audio samples. The higher the bit depth, the better the audio,
but the larger the file.

Valid values are C<16> and C<24>.

The most common bit depth is C<24>.


=head2 BitOrder => Str

  You can only choose an audio bit order when you specify C<pcm> for the
value of Audio:Codec.

The order the bits of a PCM sample are stored in.

The supported value is C<LittleEndian>.


=head2 Profile => Str

  You can only choose an audio profile when you specify AAC for the value
of Audio:Codec.

Specify the AAC profile for the output file. Elastic Transcoder
supports the following profiles:

=over

=item *

C<auto>: If you specify C<auto>, Elastic Transcoder selects the profile
based on the bit rate selected for the output file.

=item *

C<AAC-LC>: The most common AAC profile. Use for bit rates larger than
64 kbps.

=item *

C<HE-AAC>: Not supported on some older players and devices. Use for bit
rates between 40 and 80 kbps.

=item *

C<HE-AACv2>: Not supported on some players and devices. Use for bit
rates less than 48 kbps.

=back

All outputs in a C<Smooth> playlist must have the same value for
C<Profile>.

If you created any presets before AAC profiles were added, Elastic
Transcoder automatically updated your presets to use AAC-LC. You can
change the value as required.


=head2 Signed => Str

  You can only choose whether an audio sample is signed when you specify
C<pcm> for the value of Audio:Codec.

Whether audio samples are represented with negative and positive
numbers (signed) or only positive numbers (unsigned).

The supported value is C<Signed>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


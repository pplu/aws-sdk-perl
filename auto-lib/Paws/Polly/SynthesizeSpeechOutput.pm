
package Paws::Polly::SynthesizeSpeechOutput;
  use Moose;
  has AudioStream => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has RequestCharacters => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'x-amzn-RequestCharacters');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'AudioStream');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::SynthesizeSpeechOutput

=head1 ATTRIBUTES


=head2 AudioStream => Str

Stream containing the synthesized speech.


=head2 ContentType => Str

Specifies the type audio stream. This should reflect the
C<OutputFormat> parameter in your request.

=over

=item *

If you request C<mp3> as the C<OutputFormat>, the C<ContentType>
returned is audio/mpeg.

=item *

If you request C<ogg_vorbis> as the C<OutputFormat>, the C<ContentType>
returned is audio/ogg.

=item *

If you request C<pcm> as the C<OutputFormat>, the C<ContentType>
returned is audio/pcm in a signed 16-bit, 1 channel (mono),
little-endian format.

=item *

If you request C<json> as the C<OutputFormat>, the C<ContentType>
returned is audio/json.

=back



=head2 RequestCharacters => Int

Number of characters synthesized.


=head2 _request_id => Str


=cut


package Paws::ElasticTranscoder::CaptionSource;
  use Moose;
  has Encryption => (is => 'ro', isa => 'Paws::ElasticTranscoder::Encryption');
  has Key => (is => 'ro', isa => 'Str');
  has Label => (is => 'ro', isa => 'Str');
  has Language => (is => 'ro', isa => 'Str');
  has TimeOffset => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::CaptionSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::CaptionSource object:

  $service_obj->Method(Att1 => { Encryption => $value, ..., TimeOffset => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::CaptionSource object:

  $result = $service_obj->Method(...);
  $result->Att1->Encryption

=head1 DESCRIPTION

A source file for the input sidecar captions used during the
transcoding process.

=head1 ATTRIBUTES


=head2 Encryption => L<Paws::ElasticTranscoder::Encryption>

  The encryption settings, if any, that Elastic Transcoder needs to
decyrpt your caption sources, or that you want Elastic Transcoder to
apply to your caption sources.


=head2 Key => Str

  The name of the sidecar caption file that you want Elastic Transcoder
to include in the output file.


=head2 Label => Str

  The label of the caption shown in the player when choosing a language.
We recommend that you put the caption language name here, in the
language of the captions.


=head2 Language => Str

  A string that specifies the language of the caption. If you specified
multiple inputs with captions, the caption language must match in order
to be included in the output. Specify this as one of:

=over

=item *

2-character ISO 639-1 code

=item *

3-character ISO 639-2 code

=back

For more information on ISO language codes and language names, see the
List of ISO 639-1 codes.


=head2 TimeOffset => Str

  For clip generation or captions that do not start at the same time as
the associated video file, the C<TimeOffset> tells Elastic Transcoder
how much of the video to encode before including captions.

Specify the TimeOffset in the form [+-]SS.sss or [+-]HH:mm:SS.ss.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


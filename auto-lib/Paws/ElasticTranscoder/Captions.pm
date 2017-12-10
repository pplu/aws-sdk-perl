package Paws::ElasticTranscoder::Captions;
  use Moose;
  has CaptionFormats => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::CaptionFormat]');
  has CaptionSources => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::CaptionSource]');
  has MergePolicy => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::Captions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::Captions object:

  $service_obj->Method(Att1 => { CaptionFormats => $value, ..., MergePolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::Captions object:

  $result = $service_obj->Method(...);
  $result->Att1->CaptionFormats

=head1 DESCRIPTION

The captions to be created, if any.

=head1 ATTRIBUTES


=head2 CaptionFormats => ArrayRef[L<Paws::ElasticTranscoder::CaptionFormat>]

  The array of file formats for the output captions. If you leave this
value blank, Elastic Transcoder returns an error.


=head2 CaptionSources => ArrayRef[L<Paws::ElasticTranscoder::CaptionSource>]

  Source files for the input sidecar captions used during the transcoding
process. To omit all sidecar captions, leave C<CaptionSources> blank.


=head2 MergePolicy => Str

  A policy that determines how Elastic Transcoder handles the existence
of multiple captions.

=over

=item *

B<MergeOverride:> Elastic Transcoder transcodes both embedded and
sidecar captions into outputs. If captions for a language are embedded
in the input file and also appear in a sidecar file, Elastic Transcoder
uses the sidecar captions and ignores the embedded captions for that
language.

=item *

B<MergeRetain:> Elastic Transcoder transcodes both embedded and sidecar
captions into outputs. If captions for a language are embedded in the
input file and also appear in a sidecar file, Elastic Transcoder uses
the embedded captions and ignores the sidecar captions for that
language. If C<CaptionSources> is empty, Elastic Transcoder omits all
sidecar captions from the output files.

=item *

B<Override:> Elastic Transcoder transcodes only the sidecar captions
that you specify in C<CaptionSources>.

=back

C<MergePolicy> cannot be null.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


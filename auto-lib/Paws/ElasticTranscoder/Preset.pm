package Paws::ElasticTranscoder::Preset;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Audio => (is => 'ro', isa => 'Paws::ElasticTranscoder::AudioParameters');
  has Container => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Thumbnails => (is => 'ro', isa => 'Paws::ElasticTranscoder::Thumbnails');
  has Type => (is => 'ro', isa => 'Str');
  has Video => (is => 'ro', isa => 'Paws::ElasticTranscoder::VideoParameters');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::Preset

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::Preset object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Video => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::Preset object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Presets are templates that contain most of the settings for transcoding
media files from one format to another. Elastic Transcoder includes
some default presets for common formats, for example, several iPod and
iPhone versions. You can also create your own presets for formats that
aren't included among the default presets. You specify which preset you
want to use when you create a job.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) for the preset.


=head2 Audio => L<Paws::ElasticTranscoder::AudioParameters>

  A section of the response body that provides information about the
audio preset values.


=head2 Container => Str

  The container type for the output file. Valid values include C<flac>,
C<flv>, C<fmp4>, C<gif>, C<mp3>, C<mp4>, C<mpg>, C<mxf>, C<oga>,
C<ogg>, C<ts>, and C<webm>.


=head2 Description => Str

  A description of the preset.


=head2 Id => Str

  Identifier for the new preset. You use this value to get settings for
the preset or to delete it.


=head2 Name => Str

  The name of the preset.


=head2 Thumbnails => L<Paws::ElasticTranscoder::Thumbnails>

  A section of the response body that provides information about the
thumbnail preset values, if any.


=head2 Type => Str

  Whether the preset is a default preset provided by Elastic Transcoder
(C<System>) or a preset that you have defined (C<Custom>).


=head2 Video => L<Paws::ElasticTranscoder::VideoParameters>

  A section of the response body that provides information about the
video preset values.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


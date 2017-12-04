package Paws::ElasticTranscoder::JobWatermark;
  use Moose;
  has Encryption => (is => 'ro', isa => 'Paws::ElasticTranscoder::Encryption');
  has InputKey => (is => 'ro', isa => 'Str');
  has PresetWatermarkId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::JobWatermark

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::JobWatermark object:

  $service_obj->Method(Att1 => { Encryption => $value, ..., PresetWatermarkId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::JobWatermark object:

  $result = $service_obj->Method(...);
  $result->Att1->Encryption

=head1 DESCRIPTION

Watermarks can be in .png or .jpg format. If you want to display a
watermark that is not rectangular, use the .png format, which supports
transparency.

=head1 ATTRIBUTES


=head2 Encryption => L<Paws::ElasticTranscoder::Encryption>

  The encryption settings, if any, that you want Elastic Transcoder to
apply to your watermarks.


=head2 InputKey => Str

  The name of the .png or .jpg file that you want to use for the
watermark. To determine which Amazon S3 bucket contains the specified
file, Elastic Transcoder checks the pipeline specified by C<Pipeline>;
the C<Input Bucket> object in that pipeline identifies the bucket.

If the file name includes a prefix, for example, B<logos/128x64.png>,
include the prefix in the key. If the file isn't in the specified
bucket, Elastic Transcoder returns an error.


=head2 PresetWatermarkId => Str

  The ID of the watermark settings that Elastic Transcoder uses to add
watermarks to the video during transcoding. The settings are in the
preset specified by Preset for the current output. In that preset, the
value of Watermarks Id tells Elastic Transcoder which settings to use.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


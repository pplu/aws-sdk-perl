
package Paws::ElasticTranscoder::CreatePreset;
  use Moose;
  has Audio => (is => 'ro', isa => 'Paws::ElasticTranscoder::AudioParameters');
  has Container => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Thumbnails => (is => 'ro', isa => 'Paws::ElasticTranscoder::Thumbnails');
  has Video => (is => 'ro', isa => 'Paws::ElasticTranscoder::VideoParameters');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePreset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2012-09-25/presets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::CreatePresetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::CreatePreset - Arguments for method CreatePreset on L<Paws::ElasticTranscoder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePreset on the
L<Amazon Elastic Transcoder|Paws::ElasticTranscoder> service. Use the attributes of this class
as arguments to method CreatePreset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePreset.

=head1 SYNOPSIS

    my $elastictranscoder = Paws->service('ElasticTranscoder');
    my $CreatePresetResponse = $elastictranscoder->CreatePreset(
      Container => 'MyPresetContainer',
      Name      => 'MyName',
      Audio     => {
        AudioPackingMode => 'MyAudioPackingMode',    # OPTIONAL
        BitRate          => 'MyAudioBitRate',        # OPTIONAL
        Channels         => 'MyAudioChannels',       # OPTIONAL
        Codec            => 'MyAudioCodec',          # OPTIONAL
        CodecOptions     => {
          BitDepth => 'MyAudioBitDepth',             # OPTIONAL
          BitOrder => 'MyAudioBitOrder',             # OPTIONAL
          Profile  => 'MyAudioCodecProfile',         # OPTIONAL
          Signed   => 'MyAudioSigned',               # OPTIONAL
        },    # OPTIONAL
        SampleRate => 'MyAudioSampleRate',    # OPTIONAL
      },    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
      Thumbnails  => {
        AspectRatio   => 'MyAspectRatio',            # OPTIONAL
        Format        => 'MyJpgOrPng',               # OPTIONAL
        Interval      => 'MyDigits',                 # OPTIONAL
        MaxHeight     => 'MyDigitsOrAuto',           # OPTIONAL
        MaxWidth      => 'MyDigitsOrAuto',           # OPTIONAL
        PaddingPolicy => 'MyPaddingPolicy',          # OPTIONAL
        Resolution    => 'MyThumbnailResolution',    # OPTIONAL
        SizingPolicy  => 'MySizingPolicy',           # OPTIONAL
      },    # OPTIONAL
      Video => {
        AspectRatio  => 'MyAspectRatio',     # OPTIONAL
        BitRate      => 'MyVideoBitRate',    # OPTIONAL
        Codec        => 'MyVideoCodec',      # OPTIONAL
        CodecOptions => {
          'MyCodecOption' =>
            'MyCodecOption',    # key: min: 1, max: 255, value: min: 1, max: 255
        },    # max: 30; OPTIONAL
        DisplayAspectRatio => 'MyAspectRatio',         # OPTIONAL
        FixedGOP           => 'MyFixedGOP',            # OPTIONAL
        FrameRate          => 'MyFrameRate',           # OPTIONAL
        KeyframesMaxDist   => 'MyKeyframesMaxDist',    # OPTIONAL
        MaxFrameRate       => 'MyMaxFrameRate',        # OPTIONAL
        MaxHeight          => 'MyDigitsOrAuto',        # OPTIONAL
        MaxWidth           => 'MyDigitsOrAuto',        # OPTIONAL
        PaddingPolicy      => 'MyPaddingPolicy',       # OPTIONAL
        Resolution         => 'MyResolution',          # OPTIONAL
        SizingPolicy       => 'MySizingPolicy',        # OPTIONAL
        Watermarks         => [
          {
            HorizontalAlign  => 'MyHorizontalAlign',    # OPTIONAL
            HorizontalOffset => 'MyPixelsOrPercent',    # OPTIONAL
            Id        => 'MyPresetWatermarkId',    # min: 1, max: 40; OPTIONAL
            MaxHeight => 'MyPixelsOrPercent',      # OPTIONAL
            MaxWidth  => 'MyPixelsOrPercent',      # OPTIONAL
            Opacity   => 'MyOpacity',              # OPTIONAL
            SizingPolicy   => 'MyWatermarkSizingPolicy',    # OPTIONAL
            Target         => 'MyTarget',                   # OPTIONAL
            VerticalAlign  => 'MyVerticalAlign',            # OPTIONAL
            VerticalOffset => 'MyPixelsOrPercent',          # OPTIONAL
          },
          ...
        ],                                                  # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Preset  = $CreatePresetResponse->Preset;
    my $Warning = $CreatePresetResponse->Warning;

    # Returns a L<Paws::ElasticTranscoder::CreatePresetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder/CreatePreset>

=head1 ATTRIBUTES


=head2 Audio => L<Paws::ElasticTranscoder::AudioParameters>

A section of the request body that specifies the audio parameters.



=head2 B<REQUIRED> Container => Str

The container type for the output file. Valid values include C<flac>,
C<flv>, C<fmp4>, C<gif>, C<mp3>, C<mp4>, C<mpg>, C<mxf>, C<oga>,
C<ogg>, C<ts>, and C<webm>.



=head2 Description => Str

A description of the preset.



=head2 B<REQUIRED> Name => Str

The name of the preset. We recommend that the name be unique within the
AWS account, but uniqueness is not enforced.



=head2 Thumbnails => L<Paws::ElasticTranscoder::Thumbnails>

A section of the request body that specifies the thumbnail parameters,
if any.



=head2 Video => L<Paws::ElasticTranscoder::VideoParameters>

A section of the request body that specifies the video parameters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePreset in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


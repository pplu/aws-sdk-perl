# Generated from json/callargs_class.tt

package Paws::Transcribe::StartTranscriptionJob;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Transcribe::Types qw/Transcribe_Media Transcribe_Settings/;
  has LanguageCode => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Media => (is => 'ro', isa => Transcribe_Media, required => 1, predicate => 1);
  has MediaFormat => (is => 'ro', isa => Str, predicate => 1);
  has MediaSampleRateHertz => (is => 'ro', isa => Int, predicate => 1);
  has OutputBucketName => (is => 'ro', isa => Str, predicate => 1);
  has OutputEncryptionKMSKeyId => (is => 'ro', isa => Str, predicate => 1);
  has Settings => (is => 'ro', isa => Transcribe_Settings, predicate => 1);
  has TranscriptionJobName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StartTranscriptionJob');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Transcribe::StartTranscriptionJobResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'LanguageCode' => 1,
                    'Media' => 1,
                    'TranscriptionJobName' => 1
                  },
  'types' => {
               'Settings' => {
                               'class' => 'Paws::Transcribe::Settings',
                               'type' => 'Transcribe_Settings'
                             },
               'OutputEncryptionKMSKeyId' => {
                                               'type' => 'Str'
                                             },
               'TranscriptionJobName' => {
                                           'type' => 'Str'
                                         },
               'Media' => {
                            'type' => 'Transcribe_Media',
                            'class' => 'Paws::Transcribe::Media'
                          },
               'MediaSampleRateHertz' => {
                                           'type' => 'Int'
                                         },
               'MediaFormat' => {
                                  'type' => 'Str'
                                },
               'LanguageCode' => {
                                   'type' => 'Str'
                                 },
               'OutputBucketName' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::StartTranscriptionJob - Arguments for method StartTranscriptionJob on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTranscriptionJob on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method StartTranscriptionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTranscriptionJob.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $StartTranscriptionJobResponse = $transcribe->StartTranscriptionJob(
      LanguageCode => 'en-US',
      Media        => {
        MediaFileUri => 'MyUri',    # min: 1, max: 2000; OPTIONAL
      },
      TranscriptionJobName     => 'MyTranscriptionJobName',
      MediaFormat              => 'mp3',                      # OPTIONAL
      MediaSampleRateHertz     => 1,                          # OPTIONAL
      OutputBucketName         => 'MyOutputBucketName',       # OPTIONAL
      OutputEncryptionKMSKeyId => 'MyKMSKeyId',               # OPTIONAL
      Settings                 => {
        ChannelIdentification => 1,    # OPTIONAL
        MaxSpeakerLabels      => 1,    # min: 2, max: 10; OPTIONAL
        ShowSpeakerLabels     => 1,    # OPTIONAL
        VocabularyName => 'MyVocabularyName',    # min: 1, max: 200; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $TranscriptionJob = $StartTranscriptionJobResponse->TranscriptionJob;

    # Returns a L<Paws::Transcribe::StartTranscriptionJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/StartTranscriptionJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LanguageCode => Str

The language code for the language used in the input media file.

Valid values are: C<"en-US">, C<"es-US">, C<"en-AU">, C<"fr-CA">, C<"en-GB">, C<"de-DE">, C<"pt-BR">, C<"fr-FR">, C<"it-IT">, C<"ko-KR">, C<"es-ES">, C<"en-IN">, C<"hi-IN">, C<"ar-SA">, C<"ru-RU">, C<"zh-CN">, C<"nl-NL">, C<"id-ID">, C<"ta-IN">, C<"fa-IR">, C<"en-IE">, C<"en-AB">, C<"en-WL">, C<"pt-PT">

=head2 B<REQUIRED> Media => Transcribe_Media

An object that describes the input media for a transcription job.



=head2 MediaFormat => Str

The format of the input media file.

Valid values are: C<"mp3">, C<"mp4">, C<"wav">, C<"flac">

=head2 MediaSampleRateHertz => Int

The sample rate, in Hertz, of the audio track in the input media file.

If you do not specify the media sample rate, Amazon Transcribe
determines the sample rate. If you specify the sample rate, it must
match the sample rate detected by Amazon Transcribe. In most cases, you
should leave the C<MediaSampleRateHertz> field blank and let Amazon
Transcribe determine the sample rate.



=head2 OutputBucketName => Str

The location where the transcription is stored.

If you set the C<OutputBucketName>, Amazon Transcribe puts the
transcription in the specified S3 bucket. When you call the
GetTranscriptionJob operation, the operation returns this location in
the C<TranscriptFileUri> field. The S3 bucket must have permissions
that allow Amazon Transcribe to put files in the bucket. For more
information, see Permissions Required for IAM User Roles
(https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user).

You can specify an AWS Key Management Service (KMS) key to encrypt the
output of your transcription using the C<OutputEncryptionKMSKeyId>
parameter. If you don't specify a KMS key, Amazon Transcribe uses the
default Amazon S3 key for server-side encryption of transcripts that
are placed in your S3 bucket.

If you don't set the C<OutputBucketName>, Amazon Transcribe generates a
pre-signed URL, a shareable URL that provides secure access to your
transcription, and returns it in the C<TranscriptFileUri> field. Use
this URL to download the transcription.



=head2 OutputEncryptionKMSKeyId => Str

The Amazon Resource Name (ARN) of the AWS Key Management Service (KMS)
key used to encrypt the output of the transcription job. The user
calling the C<StartTranscriptionJob> operation must have permission to
use the specified KMS key.

You can use either of the following to identify a KMS key in the
current account:

=over

=item *

KMS Key ID: "1234abcd-12ab-34cd-56ef-1234567890ab"

=item *

KMS Key Alias: "alias/ExampleAlias"

=back

You can use either of the following to identify a KMS key in the
current account or another account:

=over

=item *

Amazon Resource Name (ARN) of a KMS Key: "arn:aws:kms:region:account
ID:key/1234abcd-12ab-34cd-56ef-1234567890ab"

=item *

ARN of a KMS Key Alias: "arn:aws:kms:region:account
ID:alias/ExampleAlias"

=back

If you don't specify an encryption key, the output of the transcription
job is encrypted with the default Amazon S3 key (SSE-S3).

If you specify a KMS key to encrypt your output, you must also specify
an output location in the C<OutputBucketName> parameter.



=head2 Settings => Transcribe_Settings

A C<Settings> object that provides optional settings for a
transcription job.



=head2 B<REQUIRED> TranscriptionJobName => Str

The name of the job. Note that you can't use the strings "." or ".." by
themselves as the job name. The name must also be unique within an AWS
account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTranscriptionJob in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


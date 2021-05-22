
package Paws::Transcribe::StartTranscriptionJob;
  use Moose;
  has ContentRedaction => (is => 'ro', isa => 'Paws::Transcribe::ContentRedaction');
  has IdentifyLanguage => (is => 'ro', isa => 'Bool');
  has JobExecutionSettings => (is => 'ro', isa => 'Paws::Transcribe::JobExecutionSettings');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has LanguageOptions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Media => (is => 'ro', isa => 'Paws::Transcribe::Media', required => 1);
  has MediaFormat => (is => 'ro', isa => 'Str');
  has MediaSampleRateHertz => (is => 'ro', isa => 'Int');
  has ModelSettings => (is => 'ro', isa => 'Paws::Transcribe::ModelSettings');
  has OutputBucketName => (is => 'ro', isa => 'Str');
  has OutputEncryptionKMSKeyId => (is => 'ro', isa => 'Str');
  has OutputKey => (is => 'ro', isa => 'Str');
  has Settings => (is => 'ro', isa => 'Paws::Transcribe::Settings');
  has TranscriptionJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTranscriptionJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::StartTranscriptionJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
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
      Media => {
        MediaFileUri => 'MyUri',    # min: 1, max: 2000; OPTIONAL
      },
      TranscriptionJobName => 'MyTranscriptionJobName',
      ContentRedaction     => {
        RedactionOutput =>
          'redacted',               # values: redacted, redacted_and_unredacted
        RedactionType => 'PII',     # values: PII

      },    # OPTIONAL
      IdentifyLanguage     => 1,    # OPTIONAL
      JobExecutionSettings => {
        AllowDeferredExecution => 1,
        DataAccessRoleArn =>
          'MyDataAccessRoleArn',    # min: 20, max: 2048; OPTIONAL
      },    # OPTIONAL
      LanguageCode    => 'af-ZA',    # OPTIONAL
      LanguageOptions => [
        'af-ZA',
        ... # values: af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN
      ],    # OPTIONAL
      MediaFormat          => 'mp3',    # OPTIONAL
      MediaSampleRateHertz => 1,        # OPTIONAL
      ModelSettings        => {
        LanguageModelName => 'MyModelName',    # min: 1, max: 200; OPTIONAL
      },    # OPTIONAL
      OutputBucketName         => 'MyOutputBucketName',    # OPTIONAL
      OutputEncryptionKMSKeyId => 'MyKMSKeyId',            # OPTIONAL
      OutputKey                => 'MyOutputKey',           # OPTIONAL
      Settings                 => {
        ChannelIdentification => 1,
        MaxAlternatives       => 1,    # min: 2, max: 10; OPTIONAL
        MaxSpeakerLabels      => 1,    # min: 2, max: 10; OPTIONAL
        ShowAlternatives      => 1,
        ShowSpeakerLabels     => 1,
        VocabularyFilterMethod =>
          'remove',                    # values: remove, mask, tag; OPTIONAL
        VocabularyFilterName =>
          'MyVocabularyFilterName',    # min: 1, max: 200; OPTIONAL
        VocabularyName => 'MyVocabularyName',    # min: 1, max: 200; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $TranscriptionJob = $StartTranscriptionJobResponse->TranscriptionJob;

    # Returns a L<Paws::Transcribe::StartTranscriptionJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/StartTranscriptionJob>

=head1 ATTRIBUTES


=head2 ContentRedaction => L<Paws::Transcribe::ContentRedaction>

An object that contains the request parameters for content redaction.



=head2 IdentifyLanguage => Bool

Set this field to C<true> to enable automatic language identification.
Automatic language identification is disabled by default. You receive a
C<BadRequestException> error if you enter a value for a
C<LanguageCode>.



=head2 JobExecutionSettings => L<Paws::Transcribe::JobExecutionSettings>

Provides information about how a transcription job is executed. Use
this field to indicate that the job can be queued for deferred
execution if the concurrency limit is reached and there are no slots
available to immediately run the job.



=head2 LanguageCode => Str

The language code for the language used in the input media file.

To transcribe speech in Modern Standard Arabic (ar-SA), your audio or
video file must be encoded at a sample rate of 16000 Hz or higher.

Valid values are: C<"af-ZA">, C<"ar-AE">, C<"ar-SA">, C<"cy-GB">, C<"da-DK">, C<"de-CH">, C<"de-DE">, C<"en-AB">, C<"en-AU">, C<"en-GB">, C<"en-IE">, C<"en-IN">, C<"en-US">, C<"en-WL">, C<"es-ES">, C<"es-US">, C<"fa-IR">, C<"fr-CA">, C<"fr-FR">, C<"ga-IE">, C<"gd-GB">, C<"he-IL">, C<"hi-IN">, C<"id-ID">, C<"it-IT">, C<"ja-JP">, C<"ko-KR">, C<"ms-MY">, C<"nl-NL">, C<"pt-BR">, C<"pt-PT">, C<"ru-RU">, C<"ta-IN">, C<"te-IN">, C<"tr-TR">, C<"zh-CN">

=head2 LanguageOptions => ArrayRef[Str|Undef]

An object containing a list of languages that might be present in your
collection of audio files. Automatic language identification chooses a
language that best matches the source audio from that list.



=head2 B<REQUIRED> Media => L<Paws::Transcribe::Media>

An object that describes the input media for a transcription job.



=head2 MediaFormat => Str

The format of the input media file.

Valid values are: C<"mp3">, C<"mp4">, C<"wav">, C<"flac">, C<"ogg">, C<"amr">, C<"webm">

=head2 MediaSampleRateHertz => Int

The sample rate, in Hertz, of the audio track in the input media file.

If you do not specify the media sample rate, Amazon Transcribe
determines the sample rate. If you specify the sample rate, it must
match the sample rate detected by Amazon Transcribe. In most cases, you
should leave the C<MediaSampleRateHertz> field blank and let Amazon
Transcribe determine the sample rate.



=head2 ModelSettings => L<Paws::Transcribe::ModelSettings>

Choose the custom language model you use for your transcription job in
this parameter.



=head2 OutputBucketName => Str

The location where the transcription is stored.

If you set the C<OutputBucketName>, Amazon Transcribe puts the
transcript in the specified S3 bucket. When you call the
GetTranscriptionJob operation, the operation returns this location in
the C<TranscriptFileUri> field. If you enable content redaction, the
redacted transcript appears in C<RedactedTranscriptFileUri>. If you
enable content redaction and choose to output an unredacted transcript,
that transcript's location still appears in the C<TranscriptFileUri>.
The S3 bucket must have permissions that allow Amazon Transcribe to put
files in the bucket. For more information, see Permissions Required for
IAM User Roles
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



=head2 OutputKey => Str

You can specify a location in an Amazon S3 bucket to store the output
of your transcription job.

If you don't specify an output key, Amazon Transcribe stores the output
of your transcription job in the Amazon S3 bucket you specified. By
default, the object key is "your-transcription-job-name.json".

You can use output keys to specify the Amazon S3 prefix and file name
of the transcription output. For example, specifying the Amazon S3
prefix, "folder1/folder2/", as an output key would lead to the output
being stored as "folder1/folder2/your-transcription-job-name.json". If
you specify "my-other-job-name.json" as the output key, the object key
is changed to "my-other-job-name.json". You can use an output key to
change both the prefix and the file name, for example
"folder/my-other-job-name.json".

If you specify an output key, you must also specify an S3 bucket in the
C<OutputBucketName> parameter.



=head2 Settings => L<Paws::Transcribe::Settings>

A C<Settings> object that provides optional settings for a
transcription job.



=head2 B<REQUIRED> TranscriptionJobName => Str

The name of the job. You can't use the strings "C<.>" or "C<..>" by
themselves as the job name. The name must also be unique within an AWS
account. If you try to create a transcription job with the same name as
a previous transcription job, you get a C<ConflictException> error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTranscriptionJob in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::Transcribe::StartMedicalTranscriptionJob;
  use Moose;
  has ContentIdentificationType => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has Media => (is => 'ro', isa => 'Paws::Transcribe::Media', required => 1);
  has MediaFormat => (is => 'ro', isa => 'Str');
  has MediaSampleRateHertz => (is => 'ro', isa => 'Int');
  has MedicalTranscriptionJobName => (is => 'ro', isa => 'Str', required => 1);
  has OutputBucketName => (is => 'ro', isa => 'Str', required => 1);
  has OutputEncryptionKMSKeyId => (is => 'ro', isa => 'Str');
  has OutputKey => (is => 'ro', isa => 'Str');
  has Settings => (is => 'ro', isa => 'Paws::Transcribe::MedicalTranscriptionSetting');
  has Specialty => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMedicalTranscriptionJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::StartMedicalTranscriptionJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::StartMedicalTranscriptionJob - Arguments for method StartMedicalTranscriptionJob on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMedicalTranscriptionJob on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method StartMedicalTranscriptionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMedicalTranscriptionJob.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $StartMedicalTranscriptionJobResponse =
      $transcribe->StartMedicalTranscriptionJob(
      LanguageCode => 'af-ZA',
      Media        => {
        MediaFileUri => 'MyUri',    # min: 1, max: 2000; OPTIONAL
      },
      MedicalTranscriptionJobName => 'MyTranscriptionJobName',
      OutputBucketName            => 'MyOutputBucketName',
      Specialty                   => 'PRIMARYCARE',
      Type                        => 'CONVERSATION',
      ContentIdentificationType   => 'PHI',                      # OPTIONAL
      MediaFormat                 => 'mp3',                      # OPTIONAL
      MediaSampleRateHertz        => 1,                          # OPTIONAL
      OutputEncryptionKMSKeyId    => 'MyKMSKeyId',               # OPTIONAL
      OutputKey                   => 'MyOutputKey',              # OPTIONAL
      Settings                    => {
        ChannelIdentification => 1,    # OPTIONAL
        MaxAlternatives       => 1,    # min: 2, max: 10; OPTIONAL
        MaxSpeakerLabels      => 1,    # min: 2, max: 10; OPTIONAL
        ShowAlternatives      => 1,    # OPTIONAL
        ShowSpeakerLabels     => 1,    # OPTIONAL
        VocabularyName => 'MyVocabularyName',    # min: 1, max: 200; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $MedicalTranscriptionJob =
      $StartMedicalTranscriptionJobResponse->MedicalTranscriptionJob;

   # Returns a L<Paws::Transcribe::StartMedicalTranscriptionJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/StartMedicalTranscriptionJob>

=head1 ATTRIBUTES


=head2 ContentIdentificationType => Str

You can configure Amazon Transcribe Medical to label content in the
transcription output. If you specify C<PHI>, Amazon Transcribe Medical
labels the personal health information (PHI) that it identifies in the
transcription output.

Valid values are: C<"PHI">

=head2 B<REQUIRED> LanguageCode => Str

The language code for the language spoken in the input media file. US
English (en-US) is the valid value for medical transcription jobs. Any
other value you enter for language code results in a
C<BadRequestException> error.

Valid values are: C<"af-ZA">, C<"ar-AE">, C<"ar-SA">, C<"cy-GB">, C<"da-DK">, C<"de-CH">, C<"de-DE">, C<"en-AB">, C<"en-AU">, C<"en-GB">, C<"en-IE">, C<"en-IN">, C<"en-US">, C<"en-WL">, C<"es-ES">, C<"es-US">, C<"fa-IR">, C<"fr-CA">, C<"fr-FR">, C<"ga-IE">, C<"gd-GB">, C<"he-IL">, C<"hi-IN">, C<"id-ID">, C<"it-IT">, C<"ja-JP">, C<"ko-KR">, C<"ms-MY">, C<"nl-NL">, C<"pt-BR">, C<"pt-PT">, C<"ru-RU">, C<"ta-IN">, C<"te-IN">, C<"tr-TR">, C<"zh-CN">

=head2 B<REQUIRED> Media => L<Paws::Transcribe::Media>





=head2 MediaFormat => Str

The audio format of the input media file.

Valid values are: C<"mp3">, C<"mp4">, C<"wav">, C<"flac">, C<"ogg">, C<"amr">, C<"webm">

=head2 MediaSampleRateHertz => Int

The sample rate, in Hertz, of the audio track in the input media file.

If you do not specify the media sample rate, Amazon Transcribe Medical
determines the sample rate. If you specify the sample rate, it must
match the rate detected by Amazon Transcribe Medical. In most cases,
you should leave the C<MediaSampleRateHertz> field blank and let Amazon
Transcribe Medical determine the sample rate.



=head2 B<REQUIRED> MedicalTranscriptionJobName => Str

The name of the medical transcription job. You can't use the strings
"C<.>" or "C<..>" by themselves as the job name. The name must also be
unique within an AWS account. If you try to create a medical
transcription job with the same name as a previous medical
transcription job, you get a C<ConflictException> error.



=head2 B<REQUIRED> OutputBucketName => Str

The Amazon S3 location where the transcription is stored.

You must set C<OutputBucketName> for Amazon Transcribe Medical to store
the transcription results. Your transcript appears in the S3 location
you specify. When you call the GetMedicalTranscriptionJob, the
operation returns this location in the C<TranscriptFileUri> field. The
S3 bucket must have permissions that allow Amazon Transcribe Medical to
put files in the bucket. For more information, see Permissions Required
for IAM User Roles
(https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user).

You can specify an AWS Key Management Service (KMS) key to encrypt the
output of your transcription using the C<OutputEncryptionKMSKeyId>
parameter. If you don't specify a KMS key, Amazon Transcribe Medical
uses the default Amazon S3 key for server-side encryption of
transcripts that are placed in your S3 bucket.



=head2 OutputEncryptionKMSKeyId => Str

The Amazon Resource Name (ARN) of the AWS Key Management Service (KMS)
key used to encrypt the output of the transcription job. The user
calling the StartMedicalTranscriptionJob operation must have permission
to use the specified KMS key.

You use either of the following to identify a KMS key in the current
account:

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

Amazon Resource Name (ARN) of a KMS key in the current account or
another account: "arn:aws:kms:region:account
ID:key/1234abcd-12ab-34cd-56ef-1234567890ab"

=item *

ARN of a KMS Key Alias: "arn:aws:kms:region:account
ID:alias/ExampleAlias"

=back

If you don't specify an encryption key, the output of the medical
transcription job is encrypted with the default Amazon S3 key (SSE-S3).

If you specify a KMS key to encrypt your output, you must also specify
an output location in the C<OutputBucketName> parameter.



=head2 OutputKey => Str

You can specify a location in an Amazon S3 bucket to store the output
of your medical transcription job.

If you don't specify an output key, Amazon Transcribe Medical stores
the output of your transcription job in the Amazon S3 bucket you
specified. By default, the object key is
"your-transcription-job-name.json".

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



=head2 Settings => L<Paws::Transcribe::MedicalTranscriptionSetting>

Optional settings for the medical transcription job.



=head2 B<REQUIRED> Specialty => Str

The medical specialty of any clinician speaking in the input media.

Valid values are: C<"PRIMARYCARE">

=head2 B<REQUIRED> Type => Str

The type of speech in the input audio. C<CONVERSATION> refers to
conversations between two or more speakers, e.g., a conversations
between doctors and patients. C<DICTATION> refers to single-speaker
dictated speech, e.g., for clinical notes.

Valid values are: C<"CONVERSATION">, C<"DICTATION">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMedicalTranscriptionJob in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::Transcribe::StartTranscriptionJob;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has Media => (is => 'ro', isa => 'Paws::Transcribe::Media', required => 1);
  has MediaFormat => (is => 'ro', isa => 'Str', required => 1);
  has MediaSampleRateHertz => (is => 'ro', isa => 'Int');
  has OutputBucketName => (is => 'ro', isa => 'Str');
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
      LanguageCode => 'en-US',
      Media        => {
        MediaFileUri => 'MyUri',    # min: 1, max: 2000; OPTIONAL
      },
      MediaFormat          => 'mp3',
      TranscriptionJobName => 'MyTranscriptionJobName',
      MediaSampleRateHertz => 1,                          # OPTIONAL
      OutputBucketName     => 'MyOutputBucketName',       # OPTIONAL
      Settings             => {
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

Valid values are: C<"en-US">, C<"es-US">, C<"en-AU">, C<"fr-CA">, C<"en-GB">, C<"de-DE">, C<"pt-BR">, C<"fr-FR">, C<"it-IT">

=head2 B<REQUIRED> Media => L<Paws::Transcribe::Media>

An object that describes the input media for a transcription job.



=head2 B<REQUIRED> MediaFormat => Str

The format of the input media file.

Valid values are: C<"mp3">, C<"mp4">, C<"wav">, C<"flac">

=head2 MediaSampleRateHertz => Int

The sample rate, in Hertz, of the audio track in the input media file.



=head2 OutputBucketName => Str

The location where the transcription is stored.

If you set the C<OutputBucketName>, Amazon Transcribe puts the
transcription in the specified S3 bucket. When you call the
GetTranscriptionJob operation, the operation returns this location in
the C<TranscriptFileUri> field. The S3 bucket must have permissions
that allow Amazon Transcribe to put files in the bucket. For more
information, see Permissions Required for IAM User Roles
(https://docs.aws.amazon.com/transcribe/latest/dg/access-control-managing-permissions.html#auth-role-iam-user).

If you don't set the C<OutputBucketName>, Amazon Transcribe generates a
pre-signed URL, a shareable URL that provides secure access to your
transcription, and returns it in the C<TranscriptFileUri> field. Use
this URL to download the transcription.



=head2 Settings => L<Paws::Transcribe::Settings>

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


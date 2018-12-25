package Paws::Transcribe::TranscriptionJobSummary;
  use Moose;
  has CompletionTime => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has OutputLocationType => (is => 'ro', isa => 'Str');
  has TranscriptionJobName => (is => 'ro', isa => 'Str');
  has TranscriptionJobStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::TranscriptionJobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transcribe::TranscriptionJobSummary object:

  $service_obj->Method(Att1 => { CompletionTime => $value, ..., TranscriptionJobStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transcribe::TranscriptionJobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletionTime

=head1 DESCRIPTION

Provides a summary of information about a transcription job. .

=head1 ATTRIBUTES


=head2 CompletionTime => Str

  A timestamp that shows when the job was completed.


=head2 CreationTime => Str

  A timestamp that shows when the job was created.


=head2 FailureReason => Str

  If the C<TranscriptionJobStatus> field is C<FAILED>, a description of
the error.


=head2 LanguageCode => Str

  The language code for the input speech.


=head2 OutputLocationType => Str

  Indicates the location of the output of the transcription job.

If the value is C<CUSTOMER_BUCKET> then the location is the S3 bucket
specified in the C<outputBucketName> field when the transcription job
was started with the C<StartTranscriptionJob> operation.

If the value is C<SERVICE_BUCKET> then the output is stored by Amazon
Transcribe and can be retrieved using the URI in the
C<GetTranscriptionJob> response's C<TranscriptFileUri> field.


=head2 TranscriptionJobName => Str

  The name of the transcription job.


=head2 TranscriptionJobStatus => Str

  The status of the transcription job. When the status is C<COMPLETED>,
use the C<GetTranscriptionJob> operation to get the results of the
transcription.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


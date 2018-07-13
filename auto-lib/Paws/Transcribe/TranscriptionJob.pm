package Paws::Transcribe::TranscriptionJob;
  use Moose;
  has CompletionTime => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has Media => (is => 'ro', isa => 'Paws::Transcribe::Media');
  has MediaFormat => (is => 'ro', isa => 'Str');
  has MediaSampleRateHertz => (is => 'ro', isa => 'Int');
  has Settings => (is => 'ro', isa => 'Paws::Transcribe::Settings');
  has Transcript => (is => 'ro', isa => 'Paws::Transcribe::Transcript');
  has TranscriptionJobName => (is => 'ro', isa => 'Str');
  has TranscriptionJobStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::TranscriptionJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transcribe::TranscriptionJob object:

  $service_obj->Method(Att1 => { CompletionTime => $value, ..., TranscriptionJobStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transcribe::TranscriptionJob object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletionTime

=head1 DESCRIPTION

Describes an asynchronous transcription job that was created with the
C<StartTranscriptionJob> operation.

=head1 ATTRIBUTES


=head2 CompletionTime => Str

  A timestamp that shows when the job was completed.


=head2 CreationTime => Str

  A timestamp that shows when the job was created.


=head2 FailureReason => Str

  If the C<TranscriptionJobStatus> field is C<FAILED>, this field
contains information about why the job failed.


=head2 LanguageCode => Str

  The language code for the input speech.


=head2 Media => L<Paws::Transcribe::Media>

  An object that describes the input media for the transcription job.


=head2 MediaFormat => Str

  The format of the input media file.


=head2 MediaSampleRateHertz => Int

  The sample rate, in Hertz, of the audio track in the input media file.


=head2 Settings => L<Paws::Transcribe::Settings>

  Optional settings for the transcription job. Use these settings to turn
on speaker recognition, to set the maximum number of speakers that
should be identified and to specify a custom vocabulary to use when
processing the transcription job.


=head2 Transcript => L<Paws::Transcribe::Transcript>

  An object that describes the output of the transcription job.


=head2 TranscriptionJobName => Str

  The name of the transcription job.


=head2 TranscriptionJobStatus => Str

  The status of the transcription job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


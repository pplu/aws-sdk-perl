
package Paws::Transcribe::GetTranscriptionJobResponse;
  use Moose;
  has TranscriptionJob => (is => 'ro', isa => 'Paws::Transcribe::TranscriptionJob');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::GetTranscriptionJobResponse

=head1 ATTRIBUTES


=head2 TranscriptionJob => L<Paws::Transcribe::TranscriptionJob>

An object that contains the results of the transcription job.


=head2 _request_id => Str


=cut

1;
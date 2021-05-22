
package Paws::Transcribe::GetMedicalTranscriptionJobResponse;
  use Moose;
  has MedicalTranscriptionJob => (is => 'ro', isa => 'Paws::Transcribe::MedicalTranscriptionJob');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::GetMedicalTranscriptionJobResponse

=head1 ATTRIBUTES


=head2 MedicalTranscriptionJob => L<Paws::Transcribe::MedicalTranscriptionJob>

An object that contains the results of the medical transcription job.


=head2 _request_id => Str


=cut

1;
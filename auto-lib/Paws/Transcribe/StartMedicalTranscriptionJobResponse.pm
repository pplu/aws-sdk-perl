
package Paws::Transcribe::StartMedicalTranscriptionJobResponse;
  use Moose;
  has MedicalTranscriptionJob => (is => 'ro', isa => 'Paws::Transcribe::MedicalTranscriptionJob');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::StartMedicalTranscriptionJobResponse

=head1 ATTRIBUTES


=head2 MedicalTranscriptionJob => L<Paws::Transcribe::MedicalTranscriptionJob>

A batch job submitted to transcribe medical speech to text.


=head2 _request_id => Str


=cut

1;
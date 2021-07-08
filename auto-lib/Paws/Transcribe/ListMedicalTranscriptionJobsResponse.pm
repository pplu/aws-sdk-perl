
package Paws::Transcribe::ListMedicalTranscriptionJobsResponse;
  use Moose;
  has MedicalTranscriptionJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::MedicalTranscriptionJobSummary]');
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListMedicalTranscriptionJobsResponse

=head1 ATTRIBUTES


=head2 MedicalTranscriptionJobSummaries => ArrayRef[L<Paws::Transcribe::MedicalTranscriptionJobSummary>]

A list of objects containing summary information for a transcription
job.


=head2 NextToken => Str

The C<ListMedicalTranscriptionJobs> operation returns a page of jobs at
a time. The maximum size of the page is set by the C<MaxResults>
parameter. If the number of jobs exceeds what can fit on a page, Amazon
Transcribe Medical returns the C<NextPage> token. Include the token in
the next request to the C<ListMedicalTranscriptionJobs> operation to
return in the next page of jobs.


=head2 Status => Str

The requested status of the medical transcription jobs returned.

Valid values are: C<"QUEUED">, C<"IN_PROGRESS">, C<"FAILED">, C<"COMPLETED">
=head2 _request_id => Str


=cut

1;
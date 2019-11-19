# Generated from json/callresult_class.tt

package Paws::Transcribe::ListTranscriptionJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Transcribe::Types qw/Transcribe_TranscriptionJobSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has TranscriptionJobSummaries => (is => 'ro', isa => ArrayRef[Transcribe_TranscriptionJobSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'TranscriptionJobSummaries' => {
                                                'class' => 'Paws::Transcribe::TranscriptionJobSummary',
                                                'type' => 'ArrayRef[Transcribe_TranscriptionJobSummary]'
                                              },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListTranscriptionJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<ListTranscriptionJobs> operation returns a page of jobs at a
time. The maximum size of the page is set by the C<MaxResults>
parameter. If there are more jobs in the list than the page size,
Amazon Transcribe returns the C<NextPage> token. Include the token in
the next request to the C<ListTranscriptionJobs> operation to return in
the next page of jobs.


=head2 Status => Str

The requested status of the jobs returned.

Valid values are: C<"IN_PROGRESS">, C<"FAILED">, C<"COMPLETED">
=head2 TranscriptionJobSummaries => ArrayRef[Transcribe_TranscriptionJobSummary]

A list of objects containing summary information for a transcription
job.


=head2 _request_id => Str


=cut

1;
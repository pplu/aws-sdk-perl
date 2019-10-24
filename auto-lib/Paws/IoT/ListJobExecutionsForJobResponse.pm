
package Paws::IoT::ListJobExecutionsForJobResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_JobExecutionSummaryForJob/;
  has ExecutionSummaries => (is => 'ro', isa => ArrayRef[IoT_JobExecutionSummaryForJob]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ExecutionSummaries' => {
                                         'class' => 'Paws::IoT::JobExecutionSummaryForJob',
                                         'type' => 'ArrayRef[IoT_JobExecutionSummaryForJob]'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ExecutionSummaries' => 'executionSummaries'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListJobExecutionsForJobResponse

=head1 ATTRIBUTES


=head2 ExecutionSummaries => ArrayRef[IoT_JobExecutionSummaryForJob]

A list of job execution summaries.


=head2 NextToken => Str

The token for the next set of results, or B<null> if there are no
additional results.


=head2 _request_id => Str


=cut


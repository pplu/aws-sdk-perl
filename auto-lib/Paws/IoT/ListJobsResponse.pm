
package Paws::IoT::ListJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_JobSummary/;
  has Jobs => (is => 'ro', isa => ArrayRef[IoT_JobSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Jobs' => {
                           'class' => 'Paws::IoT::JobSummary',
                           'type' => 'ArrayRef[IoT_JobSummary]'
                         }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Jobs' => 'jobs'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListJobsResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[IoT_JobSummary]

A list of jobs.


=head2 NextToken => Str

The token for the next set of results, or B<null> if there are no
additional results.


=head2 _request_id => Str


=cut


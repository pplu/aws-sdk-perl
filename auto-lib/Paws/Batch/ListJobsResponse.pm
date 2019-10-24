
package Paws::Batch::ListJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Batch::Types qw/Batch_JobSummary/;
  has JobSummaryList => (is => 'ro', isa => ArrayRef[Batch_JobSummary], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'JobSummaryList' => {
                                     'class' => 'Paws::Batch::JobSummary',
                                     'type' => 'ArrayRef[Batch_JobSummary]'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'JobSummaryList' => 'jobSummaryList'
                     },
  'IsRequired' => {
                    'JobSummaryList' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ListJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobSummaryList => ArrayRef[Batch_JobSummary]

A list of job summaries that match the request.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListJobs> request. When
the results of a C<ListJobs> request exceed C<maxResults>, this value
can be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.


=head2 _request_id => Str


=cut


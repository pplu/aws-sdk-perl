# Generated from json/callresult_class.tt

package Paws::Personalize::ListBatchInferenceJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Personalize::Types qw/Personalize_BatchInferenceJobSummary/;
  has BatchInferenceJobs => (is => 'ro', isa => ArrayRef[Personalize_BatchInferenceJobSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'BatchInferenceJobs' => {
                                         'class' => 'Paws::Personalize::BatchInferenceJobSummary',
                                         'type' => 'ArrayRef[Personalize_BatchInferenceJobSummary]'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'BatchInferenceJobs' => 'batchInferenceJobs'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListBatchInferenceJobsResponse

=head1 ATTRIBUTES


=head2 BatchInferenceJobs => ArrayRef[Personalize_BatchInferenceJobSummary]

A list containing information on each job that is returned.


=head2 NextToken => Str

The token to use to retreive the next page of results. The value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

1;
# Generated from json/callresult_class.tt

package Paws::SageMaker::ListLabelingJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_LabelingJobSummary/;
  has LabelingJobSummaryList => (is => 'ro', isa => ArrayRef[SageMaker_LabelingJobSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LabelingJobSummaryList' => {
                                             'type' => 'ArrayRef[SageMaker_LabelingJobSummary]',
                                             'class' => 'Paws::SageMaker::LabelingJobSummary'
                                           },
               'NextToken' => {
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

Paws::SageMaker::ListLabelingJobsResponse

=head1 ATTRIBUTES


=head2 LabelingJobSummaryList => ArrayRef[SageMaker_LabelingJobSummary]

An array of C<LabelingJobSummary> objects, each describing a labeling
job.


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of labeling jobs, use it in the subsequent
request.


=head2 _request_id => Str


=cut

1;
# Generated from json/callresult_class.tt

package Paws::SageMaker::ListLabelingJobsForWorkteamResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_LabelingJobForWorkteamSummary/;
  has LabelingJobSummaryList => (is => 'ro', isa => ArrayRef[SageMaker_LabelingJobForWorkteamSummary], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'LabelingJobSummaryList' => {
                                             'class' => 'Paws::SageMaker::LabelingJobForWorkteamSummary',
                                             'type' => 'ArrayRef[SageMaker_LabelingJobForWorkteamSummary]'
                                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'LabelingJobSummaryList' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListLabelingJobsForWorkteamResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> LabelingJobSummaryList => ArrayRef[SageMaker_LabelingJobForWorkteamSummary]

An array of C<LabelingJobSummary> objects, each describing a labeling
job.


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of labeling jobs, use it in the subsequent
request.


=head2 _request_id => Str


=cut

1;
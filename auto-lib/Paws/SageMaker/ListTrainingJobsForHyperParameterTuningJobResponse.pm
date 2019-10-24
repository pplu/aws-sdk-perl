# Generated from json/callresult_class.tt

package Paws::SageMaker::ListTrainingJobsForHyperParameterTuningJobResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_HyperParameterTrainingJobSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has TrainingJobSummaries => (is => 'ro', isa => ArrayRef[SageMaker_HyperParameterTrainingJobSummary], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'TrainingJobSummaries' => {
                                           'class' => 'Paws::SageMaker::HyperParameterTrainingJobSummary',
                                           'type' => 'ArrayRef[SageMaker_HyperParameterTrainingJobSummary]'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'TrainingJobSummaries' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListTrainingJobsForHyperParameterTuningJobResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the result of this C<ListTrainingJobsForHyperParameterTuningJob>
request was truncated, the response includes a C<NextToken>. To
retrieve the next set of training jobs, use the token in the next
request.


=head2 B<REQUIRED> TrainingJobSummaries => ArrayRef[SageMaker_HyperParameterTrainingJobSummary]

A list of TrainingJobSummary objects that describe the training jobs
that the C<ListTrainingJobsForHyperParameterTuningJob> request
returned.


=head2 _request_id => Str


=cut

1;
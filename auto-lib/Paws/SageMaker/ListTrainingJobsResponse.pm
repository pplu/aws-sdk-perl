# Generated from json/callresult_class.tt

package Paws::SageMaker::ListTrainingJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_TrainingJobSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has TrainingJobSummaries => (is => 'ro', isa => ArrayRef[SageMaker_TrainingJobSummary], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'TrainingJobSummaries' => {
                                           'class' => 'Paws::SageMaker::TrainingJobSummary',
                                           'type' => 'ArrayRef[SageMaker_TrainingJobSummary]'
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

Paws::SageMaker::ListTrainingJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of training jobs, use it in the subsequent
request.


=head2 B<REQUIRED> TrainingJobSummaries => ArrayRef[SageMaker_TrainingJobSummary]

An array of C<TrainingJobSummary> objects, each listing a training job.


=head2 _request_id => Str


=cut

1;
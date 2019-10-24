# Generated from json/callresult_class.tt

package Paws::SageMaker::ListHyperParameterTuningJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_HyperParameterTuningJobSummary/;
  has HyperParameterTuningJobSummaries => (is => 'ro', isa => ArrayRef[SageMaker_HyperParameterTuningJobSummary], required => 1);
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
               'HyperParameterTuningJobSummaries' => {
                                                       'class' => 'Paws::SageMaker::HyperParameterTuningJobSummary',
                                                       'type' => 'ArrayRef[SageMaker_HyperParameterTuningJobSummary]'
                                                     }
             },
  'IsRequired' => {
                    'HyperParameterTuningJobSummaries' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListHyperParameterTuningJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HyperParameterTuningJobSummaries => ArrayRef[SageMaker_HyperParameterTuningJobSummary]

A list of HyperParameterTuningJobSummary objects that describe the
tuning jobs that the C<ListHyperParameterTuningJobs> request returned.


=head2 NextToken => Str

If the result of this C<ListHyperParameterTuningJobs> request was
truncated, the response includes a C<NextToken>. To retrieve the next
set of tuning jobs, use the token in the next request.


=head2 _request_id => Str


=cut

1;
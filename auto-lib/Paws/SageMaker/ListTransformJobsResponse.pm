# Generated from json/callresult_class.tt

package Paws::SageMaker::ListTransformJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_TransformJobSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has TransformJobSummaries => (is => 'ro', isa => ArrayRef[SageMaker_TransformJobSummary], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'TransformJobSummaries' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'TransformJobSummaries' => {
                                            'class' => 'Paws::SageMaker::TransformJobSummary',
                                            'type' => 'ArrayRef[SageMaker_TransformJobSummary]'
                                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListTransformJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of transform jobs, use it in the next request.


=head2 B<REQUIRED> TransformJobSummaries => ArrayRef[SageMaker_TransformJobSummary]

An array of C<TransformJobSummary> objects.


=head2 _request_id => Str


=cut

1;
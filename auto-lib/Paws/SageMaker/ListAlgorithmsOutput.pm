# Generated from json/callresult_class.tt

package Paws::SageMaker::ListAlgorithmsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_AlgorithmSummary/;
  has AlgorithmSummaryList => (is => 'ro', isa => ArrayRef[SageMaker_AlgorithmSummary], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'AlgorithmSummaryList' => {
                                           'type' => 'ArrayRef[SageMaker_AlgorithmSummary]',
                                           'class' => 'Paws::SageMaker::AlgorithmSummary'
                                         }
             },
  'IsRequired' => {
                    'AlgorithmSummaryList' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListAlgorithmsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlgorithmSummaryList => ArrayRef[SageMaker_AlgorithmSummary]

E<gt>An array of C<AlgorithmSummary> objects, each of which lists an
algorithm.


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of algorithms, use it in the subsequent request.


=head2 _request_id => Str


=cut

1;
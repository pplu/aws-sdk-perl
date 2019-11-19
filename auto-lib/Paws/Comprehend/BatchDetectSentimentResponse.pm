# Generated from json/callresult_class.tt

package Paws::Comprehend::BatchDetectSentimentResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Comprehend::Types qw/Comprehend_BatchDetectSentimentItemResult Comprehend_BatchItemError/;
  has ErrorList => (is => 'ro', isa => ArrayRef[Comprehend_BatchItemError], required => 1);
  has ResultList => (is => 'ro', isa => ArrayRef[Comprehend_BatchDetectSentimentItemResult], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ErrorList' => {
                                'type' => 'ArrayRef[Comprehend_BatchItemError]',
                                'class' => 'Paws::Comprehend::BatchItemError'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResultList' => {
                                 'type' => 'ArrayRef[Comprehend_BatchDetectSentimentItemResult]',
                                 'class' => 'Paws::Comprehend::BatchDetectSentimentItemResult'
                               }
             },
  'IsRequired' => {
                    'ResultList' => 1,
                    'ErrorList' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::BatchDetectSentimentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ErrorList => ArrayRef[Comprehend_BatchItemError]

A list containing one object for each document that contained an error.
The results are sorted in ascending order by the C<Index> field and
match the order of the documents in the input list. If there are no
errors in the batch, the C<ErrorList> is empty.


=head2 B<REQUIRED> ResultList => ArrayRef[Comprehend_BatchDetectSentimentItemResult]

A list of objects containing the results of the operation. The results
are sorted in ascending order by the C<Index> field and match the order
of the documents in the input list. If all of the documents contain an
error, the C<ResultList> is empty.


=head2 _request_id => Str


=cut

1;
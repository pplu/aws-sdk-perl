# Generated from json/callresult_class.tt

package Paws::Comprehend::BatchDetectKeyPhrasesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Comprehend::Types qw/Comprehend_BatchItemError Comprehend_BatchDetectKeyPhrasesItemResult/;
  has ErrorList => (is => 'ro', isa => ArrayRef[Comprehend_BatchItemError], required => 1);
  has ResultList => (is => 'ro', isa => ArrayRef[Comprehend_BatchDetectKeyPhrasesItemResult], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ErrorList' => {
                                'class' => 'Paws::Comprehend::BatchItemError',
                                'type' => 'ArrayRef[Comprehend_BatchItemError]'
                              },
               'ResultList' => {
                                 'class' => 'Paws::Comprehend::BatchDetectKeyPhrasesItemResult',
                                 'type' => 'ArrayRef[Comprehend_BatchDetectKeyPhrasesItemResult]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ErrorList' => 1,
                    'ResultList' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::BatchDetectKeyPhrasesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ErrorList => ArrayRef[Comprehend_BatchItemError]

A list containing one object for each document that contained an error.
The results are sorted in ascending order by the C<Index> field and
match the order of the documents in the input list. If there are no
errors in the batch, the C<ErrorList> is empty.


=head2 B<REQUIRED> ResultList => ArrayRef[Comprehend_BatchDetectKeyPhrasesItemResult]

A list of objects containing the results of the operation. The results
are sorted in ascending order by the C<Index> field and match the order
of the documents in the input list. If all of the documents contain an
error, the C<ResultList> is empty.


=head2 _request_id => Str


=cut

1;
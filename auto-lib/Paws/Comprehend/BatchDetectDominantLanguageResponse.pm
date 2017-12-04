
package Paws::Comprehend::BatchDetectDominantLanguageResponse;
  use Moose;
  has ErrorList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::BatchItemError]', required => 1);
  has ResultList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::BatchDetectDominantLanguageItemResult]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::BatchDetectDominantLanguageResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ErrorList => ArrayRef[L<Paws::Comprehend::BatchItemError>]

A list containing one object for each document that contained an error.
The results are sorted in ascending order by the C<Index> field and
match the order of the documents in the input list. If there are no
errors in the batch, the C<ErrorList> is empty.


=head2 B<REQUIRED> ResultList => ArrayRef[L<Paws::Comprehend::BatchDetectDominantLanguageItemResult>]

A list of objects containing the results of the operation. The results
are sorted in ascending order by the C<Index> field and match the order
of the documents in the input list. If all of the documents contain an
error, the C<ResultList> is empty.


=head2 _request_id => Str


=cut

1;
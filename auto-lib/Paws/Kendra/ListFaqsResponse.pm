
package Paws::Kendra::ListFaqsResponse;
  use Moose;
  has FaqSummaryItems => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::FaqSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ListFaqsResponse

=head1 ATTRIBUTES


=head2 FaqSummaryItems => ArrayRef[L<Paws::Kendra::FaqSummary>]

information about the FAQs associated with the specified index.


=head2 NextToken => Str

The C<ListFaqs> operation returns a page of FAQs at a time. The maximum
size of the page is set by the C<MaxResults> parameter. If there are
more jobs in the list than the page size, Amazon Kendra returns the
C<NextPage> token. Include the token in the next request to the
C<ListFaqs> operation to return the next page of FAQs.


=head2 _request_id => Str


=cut

1;
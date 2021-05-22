
package Paws::Kendra::ListThesauriResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ThesaurusSummaryItems => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::ThesaurusSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ListThesauriResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon Kendra returns this token that you
can use in the subsequent request to retrieve the next set of thesauri.


=head2 ThesaurusSummaryItems => ArrayRef[L<Paws::Kendra::ThesaurusSummary>]

An array of summary information for one or more thesauruses.


=head2 _request_id => Str


=cut

1;

package Paws::Kendra::ListIndicesResponse;
  use Moose;
  has IndexConfigurationSummaryItems => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::IndexConfigurationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ListIndicesResponse

=head1 ATTRIBUTES


=head2 IndexConfigurationSummaryItems => ArrayRef[L<Paws::Kendra::IndexConfigurationSummary>]

An array of summary information for one or more indexes.


=head2 NextToken => Str

If the response is truncated, Amazon Kendra returns this token that you
can use in the subsequent request to retrieve the next set of indexes.


=head2 _request_id => Str


=cut

1;
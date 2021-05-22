
package Paws::Snowball::ListLongTermPricingResult;
  use Moose;
  has LongTermPricingEntries => (is => 'ro', isa => 'ArrayRef[Paws::Snowball::LongTermPricingListEntry]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::ListLongTermPricingResult

=head1 ATTRIBUTES


=head2 LongTermPricingEntries => ArrayRef[L<Paws::Snowball::LongTermPricingListEntry>]

Each C<LongTermPricingEntry> object contains a status, ID, and other
information about the C<LongTermPricing> type.


=head2 NextToken => Str

Because HTTP requests are stateless, this is the starting point for
your next list of returned C<ListLongTermPricing> list.


=head2 _request_id => Str


=cut

1;
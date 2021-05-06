
package Paws::SES::ListReceiptFiltersResponse;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SES::ReceiptFilter]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ListReceiptFiltersResponse

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SES::ReceiptFilter>]

A list of IP address filter data structures, which each consist of a
name, an IP address range, and whether to allow or block mail from it.


=head2 _request_id => Str


=cut


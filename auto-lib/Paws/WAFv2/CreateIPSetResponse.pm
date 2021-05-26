
package Paws::WAFv2::CreateIPSetResponse;
  use Moose;
  has Summary => (is => 'ro', isa => 'Paws::WAFv2::IPSetSummary');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::CreateIPSetResponse

=head1 ATTRIBUTES


=head2 Summary => L<Paws::WAFv2::IPSetSummary>

High-level information about an IPSet, returned by operations like
create and list. This provides information like the ID, that you can
use to retrieve and manage an C<IPSet>, and the ARN, that you provide
to the IPSetReferenceStatement to use the address set in a Rule.


=head2 _request_id => Str


=cut

1;
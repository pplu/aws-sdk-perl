
package Paws::WAFV2::GetRateBasedStatementManagedKeysResponse;
  use Moose;
  has ManagedKeysIPV4 => (is => 'ro', isa => 'Paws::WAFV2::RateBasedStatementManagedKeysIPSet');
  has ManagedKeysIPV6 => (is => 'ro', isa => 'Paws::WAFV2::RateBasedStatementManagedKeysIPSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::GetRateBasedStatementManagedKeysResponse

=head1 ATTRIBUTES


=head2 ManagedKeysIPV4 => L<Paws::WAFV2::RateBasedStatementManagedKeysIPSet>

The keys that are of Internet Protocol version 4 (IPv4).


=head2 ManagedKeysIPV6 => L<Paws::WAFV2::RateBasedStatementManagedKeysIPSet>

The keys that are of Internet Protocol version 6 (IPv6).


=head2 _request_id => Str


=cut

1;
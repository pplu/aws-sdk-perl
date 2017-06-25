
package Paws::WAF::GetRateBasedRuleManagedKeysResponse;
  use Moose;
  has ManagedKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetRateBasedRuleManagedKeysResponse

=head1 ATTRIBUTES


=head2 ManagedKeys => ArrayRef[Str|Undef]

An array of IP addresses that currently are blocked by the specified
RateBasedRule.


=head2 NextMarker => Str

A null value and not currently used.


=head2 _request_id => Str


=cut

1;
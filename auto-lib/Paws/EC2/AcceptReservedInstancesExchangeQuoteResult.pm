
package Paws::EC2::AcceptReservedInstancesExchangeQuoteResult;
  use Moose;
  has ExchangeId => (is => 'ro', isa => 'Str', xmlname => 'exchangeId', traits => ['Unwrapped',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AcceptReservedInstancesExchangeQuoteResult

=head1 ATTRIBUTES


=head2 ExchangeId => Str

The ID of the successful exchange.




=cut


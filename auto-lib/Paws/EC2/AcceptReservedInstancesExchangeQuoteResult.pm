
package Paws::EC2::AcceptReservedInstancesExchangeQuoteResult;
  use Moose;
  has ExchangeId => (is => 'ro', isa => 'Str', request_name => 'exchangeId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AcceptReservedInstancesExchangeQuoteResult

=head1 ATTRIBUTES


=head2 ExchangeId => Str

The ID of the successful exchange.


=head2 _request_id => Str


=cut


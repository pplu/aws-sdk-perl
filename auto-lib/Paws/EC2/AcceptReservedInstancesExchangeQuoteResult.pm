
package Paws::EC2::AcceptReservedInstancesExchangeQuoteResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has ExchangeId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ExchangeId' => 'exchangeId'
                     },
  'types' => {
               'ExchangeId' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AcceptReservedInstancesExchangeQuoteResult

=head1 ATTRIBUTES


=head2 ExchangeId => Str

The ID of the successful exchange.


=head2 _request_id => Str


=cut


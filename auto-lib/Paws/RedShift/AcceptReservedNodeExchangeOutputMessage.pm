
package Paws::RedShift::AcceptReservedNodeExchangeOutputMessage;
  use Moose;
  has ExchangedReservedNode => (is => 'ro', isa => 'Paws::RedShift::ReservedNode');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::AcceptReservedNodeExchangeOutputMessage

=head1 ATTRIBUTES


=head2 ExchangedReservedNode => L<Paws::RedShift::ReservedNode>




=head2 _request_id => Str


=cut


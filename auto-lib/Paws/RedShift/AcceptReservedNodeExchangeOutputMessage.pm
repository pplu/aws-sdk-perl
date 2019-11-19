# Generated from callresult_class.tt

package Paws::RedShift::AcceptReservedNodeExchangeOutputMessage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RedShift::Types qw/RedShift_ReservedNode/;
  has ExchangedReservedNode => (is => 'ro', isa => RedShift_ReservedNode);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExchangedReservedNode' => {
                                            'type' => 'RedShift_ReservedNode',
                                            'class' => 'Paws::RedShift::ReservedNode'
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

Paws::RedShift::AcceptReservedNodeExchangeOutputMessage

=head1 ATTRIBUTES


=head2 ExchangedReservedNode => RedShift_ReservedNode




=head2 _request_id => Str


=cut


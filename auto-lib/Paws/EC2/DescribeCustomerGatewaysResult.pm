
package Paws::EC2::DescribeCustomerGatewaysResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_CustomerGateway/;
  has CustomerGateways => (is => 'ro', isa => ArrayRef[EC2_CustomerGateway]);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'CustomerGateways' => {
                                       'class' => 'Paws::EC2::CustomerGateway',
                                       'type' => 'ArrayRef[EC2_CustomerGateway]'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'CustomerGateways' => 'customerGatewaySet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeCustomerGatewaysResult

=head1 ATTRIBUTES


=head2 CustomerGateways => ArrayRef[EC2_CustomerGateway]

Information about one or more customer gateways.


=head2 _request_id => Str


=cut


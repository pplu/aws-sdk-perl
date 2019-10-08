
package Paws::EC2::CreateCustomerGatewayResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_CustomerGateway/;
  has CustomerGateway => (is => 'ro', isa => EC2_CustomerGateway);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CustomerGateway' => {
                                      'class' => 'Paws::EC2::CustomerGateway',
                                      'type' => 'EC2_CustomerGateway'
                                    }
             },
  'NameInRequest' => {
                       'CustomerGateway' => 'customerGateway'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateCustomerGatewayResult

=head1 ATTRIBUTES


=head2 CustomerGateway => EC2_CustomerGateway

Information about the customer gateway.


=head2 _request_id => Str


=cut


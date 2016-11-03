
package Paws::EC2::DescribeCustomerGatewaysResult;
  use Moose;
  has CustomerGateways => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CustomerGateway]', request_name => 'customerGatewaySet', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeCustomerGatewaysResult

=head1 ATTRIBUTES


=head2 CustomerGateways => ArrayRef[L<Paws::EC2::CustomerGateway>]

Information about one or more customer gateways.




=cut


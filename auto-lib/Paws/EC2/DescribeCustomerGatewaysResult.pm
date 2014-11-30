
package Paws::EC2::DescribeCustomerGatewaysResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has CustomerGateways => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CustomerGateway]', traits => ['Unwrapped'], xmlname => 'customerGatewaySet');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeCustomerGatewaysResult

=head1 ATTRIBUTES

=head2 CustomerGateways => ArrayRef[Paws::EC2::CustomerGateway]

  

Information about one or more customer gateways.











=cut


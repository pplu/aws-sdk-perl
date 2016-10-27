
package Paws::EC2::CreateCustomerGatewayResult;
  use Moose;
  has CustomerGateway => (is => 'ro', isa => 'Paws::EC2::CustomerGateway', xmlname => 'customerGateway', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateCustomerGatewayResult

=head1 ATTRIBUTES


=head2 CustomerGateway => L<Paws::EC2::CustomerGateway>

Information about the customer gateway.




=cut


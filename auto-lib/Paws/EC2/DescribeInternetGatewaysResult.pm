
package Paws::EC2::DescribeInternetGatewaysResult;
  use Moose;
  has InternetGateways => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InternetGateway]', request_name => 'internetGatewaySet', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInternetGatewaysResult

=head1 ATTRIBUTES


=head2 InternetGateways => ArrayRef[L<Paws::EC2::InternetGateway>]

Information about one or more Internet gateways.




=cut


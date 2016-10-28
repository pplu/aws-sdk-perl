
package Paws::EC2::DescribeInternetGatewaysResult;
  use Moose;
  has InternetGateways => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InternetGateway]', xmlname => 'internetGatewaySet', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInternetGatewaysResult

=head1 ATTRIBUTES


=head2 InternetGateways => ArrayRef[L<Paws::EC2::InternetGateway>]

Information about one or more Internet gateways.




=cut


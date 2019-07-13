
package Paws::EC2::DescribeClientVpnEndpointsResult;
  use Moose;
  has ClientVpnEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ClientVpnEndpoint]', request_name => 'clientVpnEndpoint', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeClientVpnEndpointsResult

=head1 ATTRIBUTES


=head2 ClientVpnEndpoints => ArrayRef[L<Paws::EC2::ClientVpnEndpoint>]

Information about the Client VPN endpoints.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut



package Paws::EC2::DescribeTransitGatewayMulticastDomainsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has TransitGatewayMulticastDomains => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TransitGatewayMulticastDomain]', request_name => 'transitGatewayMulticastDomains', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTransitGatewayMulticastDomainsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 TransitGatewayMulticastDomains => ArrayRef[L<Paws::EC2::TransitGatewayMulticastDomain>]

Information about the transit gateway multicast domains.


=head2 _request_id => Str


=cut


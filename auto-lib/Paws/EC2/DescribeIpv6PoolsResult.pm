
package Paws::EC2::DescribeIpv6PoolsResult;
  use Moose;
  has Ipv6Pools => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Ipv6Pool]', request_name => 'ipv6PoolSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeIpv6PoolsResult

=head1 ATTRIBUTES


=head2 Ipv6Pools => ArrayRef[L<Paws::EC2::Ipv6Pool>]

Information about the IPv6 address pools.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut


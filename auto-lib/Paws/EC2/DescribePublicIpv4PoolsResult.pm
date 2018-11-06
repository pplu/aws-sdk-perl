
package Paws::EC2::DescribePublicIpv4PoolsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has PublicIpv4Pools => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PublicIpv4Pool]', request_name => 'publicIpv4PoolSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribePublicIpv4PoolsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 PublicIpv4Pools => ArrayRef[L<Paws::EC2::PublicIpv4Pool>]

Information about the address pools.


=head2 _request_id => Str


=cut


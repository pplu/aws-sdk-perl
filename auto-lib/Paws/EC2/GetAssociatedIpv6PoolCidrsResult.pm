
package Paws::EC2::GetAssociatedIpv6PoolCidrsResult;
  use Moose;
  has Ipv6CidrAssociations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Ipv6CidrAssociation]', request_name => 'ipv6CidrAssociationSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetAssociatedIpv6PoolCidrsResult

=head1 ATTRIBUTES


=head2 Ipv6CidrAssociations => ArrayRef[L<Paws::EC2::Ipv6CidrAssociation>]

Information about the IPv6 CIDR block associations.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut


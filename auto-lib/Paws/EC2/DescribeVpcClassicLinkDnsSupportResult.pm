
package Paws::EC2::DescribeVpcClassicLinkDnsSupportResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', xmlname => 'nextToken', traits => ['Unwrapped',]);
  has Vpcs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ClassicLinkDnsSupport]', xmlname => 'vpcs', traits => ['Unwrapped',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcClassicLinkDnsSupportResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items.



=head2 Vpcs => ArrayRef[L<Paws::EC2::ClassicLinkDnsSupport>]

Information about the ClassicLink DNS support status of the VPCs.




=cut


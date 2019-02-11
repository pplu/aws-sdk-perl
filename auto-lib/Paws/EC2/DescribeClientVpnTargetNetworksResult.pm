
package Paws::EC2::DescribeClientVpnTargetNetworksResult;
  use Moose;
  has ClientVpnTargetNetworks => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TargetNetwork]', request_name => 'clientVpnTargetNetworks', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeClientVpnTargetNetworksResult

=head1 ATTRIBUTES


=head2 ClientVpnTargetNetworks => ArrayRef[L<Paws::EC2::TargetNetwork>]

Information about the associated target networks.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut


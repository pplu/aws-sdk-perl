
package Paws::EC2::DescribeSpotInstanceRequestsResult;
  use Moose;
  has SpotInstanceRequests => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SpotInstanceRequest]', request_name => 'spotInstanceRequestSet', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSpotInstanceRequestsResult

=head1 ATTRIBUTES


=head2 SpotInstanceRequests => ArrayRef[L<Paws::EC2::SpotInstanceRequest>]

One or more Spot instance requests.




=cut


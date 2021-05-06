
package Paws::EC2::DescribeSpotInstanceRequestsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has SpotInstanceRequests => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SpotInstanceRequest]', request_name => 'spotInstanceRequestSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSpotInstanceRequestsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next set of results. This value is
C<null> when there are no more results to return.


=head2 SpotInstanceRequests => ArrayRef[L<Paws::EC2::SpotInstanceRequest>]

One or more Spot Instance requests.


=head2 _request_id => Str


=cut


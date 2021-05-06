
package Paws::EC2::DescribeSpotFleetInstancesResponse;
  use Moose;
  has ActiveInstances => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ActiveInstance]', request_name => 'activeInstanceSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has SpotFleetRequestId => (is => 'ro', isa => 'Str', request_name => 'spotFleetRequestId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSpotFleetInstancesResponse

=head1 ATTRIBUTES


=head2 ActiveInstances => ArrayRef[L<Paws::EC2::ActiveInstance>]

The running instances. This list is refreshed periodically and might be
out of date.


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
C<null> when there are no more results to return.


=head2 SpotFleetRequestId => Str

The ID of the Spot Fleet request.


=head2 _request_id => Str


=cut


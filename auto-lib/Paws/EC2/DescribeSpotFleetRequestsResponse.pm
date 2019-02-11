
package Paws::EC2::DescribeSpotFleetRequestsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has SpotFleetRequestConfigs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SpotFleetRequestConfig]', request_name => 'spotFleetRequestConfigSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSpotFleetRequestsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
C<null> when there are no more results to return.


=head2 SpotFleetRequestConfigs => ArrayRef[L<Paws::EC2::SpotFleetRequestConfig>]

Information about the configuration of your Spot Fleet.


=head2 _request_id => Str


=cut


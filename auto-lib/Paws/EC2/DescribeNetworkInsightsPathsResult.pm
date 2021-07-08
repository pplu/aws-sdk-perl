
package Paws::EC2::DescribeNetworkInsightsPathsResult;
  use Moose;
  has NetworkInsightsPaths => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NetworkInsightsPath]', request_name => 'networkInsightsPathSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkInsightsPathsResult

=head1 ATTRIBUTES


=head2 NetworkInsightsPaths => ArrayRef[L<Paws::EC2::NetworkInsightsPath>]

Information about the paths.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut


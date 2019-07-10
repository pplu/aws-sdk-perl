
package Paws::EC2::DescribeTrafficMirrorTargetsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has TrafficMirrorTargets => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TrafficMirrorTarget]', request_name => 'trafficMirrorTargetSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTrafficMirrorTargetsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value is
C<null> when there are no more results to return.


=head2 TrafficMirrorTargets => ArrayRef[L<Paws::EC2::TrafficMirrorTarget>]

Information about one or more Traffic Mirror targets.


=head2 _request_id => Str


=cut


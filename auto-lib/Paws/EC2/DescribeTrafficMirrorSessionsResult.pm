
package Paws::EC2::DescribeTrafficMirrorSessionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has TrafficMirrorSessions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TrafficMirrorSession]', request_name => 'trafficMirrorSessionSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTrafficMirrorSessionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value is
C<null> when there are no more results to return.


=head2 TrafficMirrorSessions => ArrayRef[L<Paws::EC2::TrafficMirrorSession>]

Describes one or more Traffic Mirror sessions. By default, all Traffic
Mirror sessions are described. Alternatively, you can filter the
results.


=head2 _request_id => Str


=cut


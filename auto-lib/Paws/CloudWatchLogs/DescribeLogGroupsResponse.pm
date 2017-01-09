
package Paws::CloudWatchLogs::DescribeLogGroupsResponse;
  use Moose;
  has LogGroups => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::LogGroup]', traits => ['Unwrapped'], xmlname => 'logGroups' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeLogGroupsResponse

=head1 ATTRIBUTES


=head2 LogGroups => ArrayRef[L<Paws::CloudWatchLogs::LogGroup>]

The log groups.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;
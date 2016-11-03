
package Paws::CloudWatchLogs::DescribeLogGroupsResponse;
  use Moose;
  has LogGroups => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::LogGroup]', traits => ['NameInRequest'], request_name => 'logGroups' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeLogGroupsResponse

=head1 ATTRIBUTES


=head2 LogGroups => ArrayRef[L<Paws::CloudWatchLogs::LogGroup>]





=head2 NextToken => Str






=cut

1;
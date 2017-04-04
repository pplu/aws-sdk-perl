
package Paws::EC2::DescribeFlowLogsResult;
  use Moose;
  has FlowLogs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::FlowLog]', request_name => 'flowLogSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeFlowLogsResult

=head1 ATTRIBUTES


=head2 FlowLogs => ArrayRef[L<Paws::EC2::FlowLog>]

Information about the flow logs.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut


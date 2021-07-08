
package Paws::Appflow::DescribeFlowExecutionRecordsResponse;
  use Moose;
  has FlowExecutions => (is => 'ro', isa => 'ArrayRef[Paws::Appflow::ExecutionRecord]', traits => ['NameInRequest'], request_name => 'flowExecutions');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::DescribeFlowExecutionRecordsResponse

=head1 ATTRIBUTES


=head2 FlowExecutions => ArrayRef[L<Paws::Appflow::ExecutionRecord>]

Returns a list of all instances when this flow was run.


=head2 NextToken => Str

The pagination token for the next page of data.


=head2 _request_id => Str


=cut


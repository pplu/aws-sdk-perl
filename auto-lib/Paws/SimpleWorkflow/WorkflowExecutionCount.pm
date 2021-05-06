
package Paws::SimpleWorkflow::WorkflowExecutionCount;
  use Moose;
  has Count => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'count' , required => 1);
  has Truncated => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'truncated' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowExecutionCount

=head1 ATTRIBUTES


=head2 B<REQUIRED> Count => Int

The number of workflow executions.


=head2 Truncated => Bool

If set to true, indicates that the actual count was more than the
maximum supported by this API and the count returned is the truncated
value.


=head2 _request_id => Str


=cut

1;
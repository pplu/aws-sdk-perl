
package Paws::CodePipeline::ListActionExecutionsOutput;
  use Moose;
  has ActionExecutionDetails => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::ActionExecutionDetail]', traits => ['NameInRequest'], request_name => 'actionExecutionDetails' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListActionExecutionsOutput

=head1 ATTRIBUTES


=head2 ActionExecutionDetails => ArrayRef[L<Paws::CodePipeline::ActionExecutionDetail>]

The details for a list of recent executions, such as action execution
ID.


=head2 NextToken => Str

If the amount of returned information is significantly large, an
identifier is also returned and can be used in a subsequent
ListActionExecutions call to return the next set of action executions
in the list.


=head2 _request_id => Str


=cut

1;
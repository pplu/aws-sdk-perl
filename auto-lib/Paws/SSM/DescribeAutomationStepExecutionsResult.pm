
package Paws::SSM::DescribeAutomationStepExecutionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StepExecutions => (is => 'ro', isa => 'ArrayRef[Paws::SSM::StepExecution]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeAutomationStepExecutionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 StepExecutions => ArrayRef[L<Paws::SSM::StepExecution>]

A list of details about the current state of all steps that make up an
execution.


=head2 _request_id => Str


=cut

1;
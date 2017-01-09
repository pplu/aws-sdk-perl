
package Paws::SSM::GetAutomationExecutionResult;
  use Moose;
  has AutomationExecution => (is => 'ro', isa => 'Paws::SSM::AutomationExecution');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetAutomationExecutionResult

=head1 ATTRIBUTES


=head2 AutomationExecution => L<Paws::SSM::AutomationExecution>

Detailed information about the current state of an automation
execution.


=head2 _request_id => Str


=cut

1;
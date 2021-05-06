
package Paws::SSM::StartAutomationExecutionResult;
  use Moose;
  has AutomationExecutionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::StartAutomationExecutionResult

=head1 ATTRIBUTES


=head2 AutomationExecutionId => Str

The unique ID of a newly scheduled automation execution.


=head2 _request_id => Str


=cut

1;
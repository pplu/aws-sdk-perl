
package Paws::SSM::StartChangeRequestExecutionResult;
  use Moose;
  has AutomationExecutionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::StartChangeRequestExecutionResult

=head1 ATTRIBUTES


=head2 AutomationExecutionId => Str

The unique ID of a runbook workflow operation. (A runbook workflow is a
type of Automation operation.)


=head2 _request_id => Str


=cut

1;
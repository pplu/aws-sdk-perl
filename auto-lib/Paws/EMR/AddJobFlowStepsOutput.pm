
package Paws::EMR::AddJobFlowStepsOutput;
  use Moose;
  has StepIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::AddJobFlowStepsOutput

=head1 ATTRIBUTES


=head2 StepIds => ArrayRef[Str|Undef]

The identifiers of the list of steps added to the job flow.




=cut

1;
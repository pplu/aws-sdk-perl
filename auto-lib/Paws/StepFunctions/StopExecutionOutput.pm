
package Paws::StepFunctions::StopExecutionOutput;
  use Moose;
  has StopDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stopDate' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::StopExecutionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> StopDate => Str

The date the execution is stopped.


=head2 _request_id => Str


=cut

1;
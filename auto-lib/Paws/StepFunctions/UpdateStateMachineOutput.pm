
package Paws::StepFunctions::UpdateStateMachineOutput;
  use Moose;
  has UpdateDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateDate' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::UpdateStateMachineOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> UpdateDate => Str

The date and time the state machine was updated.


=head2 _request_id => Str


=cut

1;
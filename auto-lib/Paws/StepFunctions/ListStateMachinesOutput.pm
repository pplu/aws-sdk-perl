
package Paws::StepFunctions::ListStateMachinesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has StateMachines => (is => 'ro', isa => 'ArrayRef[Paws::StepFunctions::StateMachineListItem]', traits => ['NameInRequest'], request_name => 'stateMachines' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::ListStateMachinesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If a C<nextToken> is returned, there are more results available. To
retrieve the next page of results, make the call again using the
returned token in C<nextToken>. Keep all other arguments unchanged.

The configured C<maxResults> determines how many results can be
returned in a single call.


=head2 B<REQUIRED> StateMachines => ArrayRef[L<Paws::StepFunctions::StateMachineListItem>]




=head2 _request_id => Str


=cut

1;

package Paws::CodePipeline::GetActionTypeOutput;
  use Moose;
  has ActionType => (is => 'ro', isa => 'Paws::CodePipeline::ActionTypeDeclaration', traits => ['NameInRequest'], request_name => 'actionType' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::GetActionTypeOutput

=head1 ATTRIBUTES


=head2 ActionType => L<Paws::CodePipeline::ActionTypeDeclaration>

The action type information for the requested action type, such as the
action type ID.


=head2 _request_id => Str


=cut

1;

package Paws::CodePipeline::CreateCustomActionTypeOutput;
  use Moose;
  has ActionType => (is => 'ro', isa => 'Paws::CodePipeline::ActionType', traits => ['NameInRequest'], request_name => 'actionType' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::CreateCustomActionTypeOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionType => L<Paws::CodePipeline::ActionType>






=cut

1;
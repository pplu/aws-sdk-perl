package Paws::CodePipeline::StageState;
  use Moose;
  has actionStates => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::ActionState]');
  has inboundTransitionState => (is => 'ro', isa => 'Paws::CodePipeline::TransitionState');
  has stageName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::StageState

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::StageState object:

  $service_obj->Method(Att1 => { actionStates => $value, ..., stageName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::StageState object:

  $result = $service_obj->Method(...);
  $result->Att1->actionStates

=head1 ATTRIBUTES

=head2 actionStates => ArrayRef[L<Paws::CodePipeline::ActionState>]

  The state of the stage.

=head2 inboundTransitionState => L<Paws::CodePipeline::TransitionState>

  The state of the inbound transition, which is either enabled or
disabled.

=head2 stageName => Str

  The name of the stage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


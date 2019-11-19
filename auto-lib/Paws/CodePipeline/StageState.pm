# Generated from default/object.tt
package Paws::CodePipeline::StageState;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::CodePipeline::Types qw/CodePipeline_StageExecution CodePipeline_ActionState CodePipeline_TransitionState/;
  has ActionStates => (is => 'ro', isa => ArrayRef[CodePipeline_ActionState]);
  has InboundTransitionState => (is => 'ro', isa => CodePipeline_TransitionState);
  has LatestExecution => (is => 'ro', isa => CodePipeline_StageExecution);
  has StageName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ActionStates' => {
                                   'type' => 'ArrayRef[CodePipeline_ActionState]',
                                   'class' => 'Paws::CodePipeline::ActionState'
                                 },
               'StageName' => {
                                'type' => 'Str'
                              },
               'InboundTransitionState' => {
                                             'class' => 'Paws::CodePipeline::TransitionState',
                                             'type' => 'CodePipeline_TransitionState'
                                           },
               'LatestExecution' => {
                                      'type' => 'CodePipeline_StageExecution',
                                      'class' => 'Paws::CodePipeline::StageExecution'
                                    }
             },
  'NameInRequest' => {
                       'InboundTransitionState' => 'inboundTransitionState',
                       'LatestExecution' => 'latestExecution',
                       'StageName' => 'stageName',
                       'ActionStates' => 'actionStates'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::StageState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::StageState object:

  $service_obj->Method(Att1 => { ActionStates => $value, ..., StageName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::StageState object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionStates

=head1 DESCRIPTION

Represents information about the state of the stage.

=head1 ATTRIBUTES


=head2 ActionStates => ArrayRef[CodePipeline_ActionState]

  The state of the stage.


=head2 InboundTransitionState => CodePipeline_TransitionState

  The state of the inbound transition, which is either enabled or
disabled.


=head2 LatestExecution => CodePipeline_StageExecution

  Information about the latest execution in the stage, including its ID
and status.


=head2 StageName => Str

  The name of the stage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


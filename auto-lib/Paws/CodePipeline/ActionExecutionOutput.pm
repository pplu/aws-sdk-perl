# Generated from default/object.tt
package Paws::CodePipeline::ActionExecutionOutput;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::CodePipeline::Types qw/CodePipeline_ActionExecutionResult CodePipeline_ArtifactDetail/;
  has ExecutionResult => (is => 'ro', isa => CodePipeline_ActionExecutionResult);
  has OutputArtifacts => (is => 'ro', isa => ArrayRef[CodePipeline_ArtifactDetail]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExecutionResult' => {
                                      'class' => 'Paws::CodePipeline::ActionExecutionResult',
                                      'type' => 'CodePipeline_ActionExecutionResult'
                                    },
               'OutputArtifacts' => {
                                      'class' => 'Paws::CodePipeline::ArtifactDetail',
                                      'type' => 'ArrayRef[CodePipeline_ArtifactDetail]'
                                    }
             },
  'NameInRequest' => {
                       'ExecutionResult' => 'executionResult',
                       'OutputArtifacts' => 'outputArtifacts'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionExecutionOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionExecutionOutput object:

  $service_obj->Method(Att1 => { ExecutionResult => $value, ..., OutputArtifacts => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionExecutionOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->ExecutionResult

=head1 DESCRIPTION

Output details listed for an action execution, such as the action
execution result.

=head1 ATTRIBUTES


=head2 ExecutionResult => CodePipeline_ActionExecutionResult

  Execution result information listed in the output details for an action
execution.


=head2 OutputArtifacts => ArrayRef[CodePipeline_ArtifactDetail]

  Details of output artifacts of the action that correspond to the action
execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


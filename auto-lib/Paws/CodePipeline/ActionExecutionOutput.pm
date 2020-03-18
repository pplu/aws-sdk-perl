package Paws::CodePipeline::ActionExecutionOutput;
  use Moose;
  has ExecutionResult => (is => 'ro', isa => 'Paws::CodePipeline::ActionExecutionResult', request_name => 'executionResult', traits => ['NameInRequest']);
  has OutputArtifacts => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::ArtifactDetail]', request_name => 'outputArtifacts', traits => ['NameInRequest']);
  has OutputVariables => (is => 'ro', isa => 'Paws::CodePipeline::OutputVariablesMap', request_name => 'outputVariables', traits => ['NameInRequest']);

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

  $service_obj->Method(Att1 => { ExecutionResult => $value, ..., OutputVariables => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionExecutionOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->ExecutionResult

=head1 DESCRIPTION

Output details listed for an action execution, such as the action
execution result.

=head1 ATTRIBUTES


=head2 ExecutionResult => L<Paws::CodePipeline::ActionExecutionResult>

  Execution result information listed in the output details for an action
execution.


=head2 OutputArtifacts => ArrayRef[L<Paws::CodePipeline::ArtifactDetail>]

  Details of output artifacts of the action that correspond to the action
execution.


=head2 OutputVariables => L<Paws::CodePipeline::OutputVariablesMap>

  The outputVariables field shows the key-value pairs that were output as
part of that execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


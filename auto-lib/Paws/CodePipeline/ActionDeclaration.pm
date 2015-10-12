package Paws::CodePipeline::ActionDeclaration;
  use Moose;
  has actionTypeId => (is => 'ro', isa => 'Paws::CodePipeline::ActionTypeId', required => 1);
  has configuration => (is => 'ro', isa => 'Paws::CodePipeline::ActionConfigurationMap');
  has inputArtifacts => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::InputArtifact]');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has outputArtifacts => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::OutputArtifact]');
  has roleArn => (is => 'ro', isa => 'Str');
  has runOrder => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionDeclaration

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionDeclaration object:

  $service_obj->Method(Att1 => { actionTypeId => $value, ..., runOrder => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionDeclaration object:

  $result = $service_obj->Method(...);
  $result->Att1->actionTypeId

=head1 ATTRIBUTES

=head2 B<REQUIRED> actionTypeId => Paws::CodePipeline::ActionTypeId

  

The configuration information for the action type.










=head2 configuration => Paws::CodePipeline::ActionConfigurationMap

  

The action declaration's configuration.










=head2 inputArtifacts => ArrayRef[Paws::CodePipeline::InputArtifact]

  

The name or ID of the artifact consumed by the action, such as a test
or build artifact.










=head2 B<REQUIRED> name => Str

  

The action declaration's name.










=head2 outputArtifacts => ArrayRef[Paws::CodePipeline::OutputArtifact]

  

The name or ID of the result of the action declaration, such as a test
or build artifact.










=head2 roleArn => Str

  

The ARN of the IAM service role that will perform the declared action.
This is assumed through the roleArn for the pipeline.










=head2 runOrder => Int

  

The order in which actions are run.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


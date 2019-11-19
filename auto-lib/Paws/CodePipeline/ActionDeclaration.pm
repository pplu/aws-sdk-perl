# Generated from default/object.tt
package Paws::CodePipeline::ActionDeclaration;
  use Moo;
  use Types::Standard qw/ArrayRef Str Int/;
  use Paws::CodePipeline::Types qw/CodePipeline_InputArtifact CodePipeline_ActionTypeId CodePipeline_ActionConfigurationMap CodePipeline_OutputArtifact/;
  has ActionTypeId => (is => 'ro', isa => CodePipeline_ActionTypeId, required => 1);
  has Configuration => (is => 'ro', isa => CodePipeline_ActionConfigurationMap);
  has InputArtifacts => (is => 'ro', isa => ArrayRef[CodePipeline_InputArtifact]);
  has Name => (is => 'ro', isa => Str, required => 1);
  has Namespace => (is => 'ro', isa => Str);
  has OutputArtifacts => (is => 'ro', isa => ArrayRef[CodePipeline_OutputArtifact]);
  has Region => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);
  has RunOrder => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'OutputArtifacts' => {
                                      'type' => 'ArrayRef[CodePipeline_OutputArtifact]',
                                      'class' => 'Paws::CodePipeline::OutputArtifact'
                                    },
               'Region' => {
                             'type' => 'Str'
                           },
               'ActionTypeId' => {
                                   'type' => 'CodePipeline_ActionTypeId',
                                   'class' => 'Paws::CodePipeline::ActionTypeId'
                                 },
               'InputArtifacts' => {
                                     'type' => 'ArrayRef[CodePipeline_InputArtifact]',
                                     'class' => 'Paws::CodePipeline::InputArtifact'
                                   },
               'Namespace' => {
                                'type' => 'Str'
                              },
               'Configuration' => {
                                    'class' => 'Paws::CodePipeline::ActionConfigurationMap',
                                    'type' => 'CodePipeline_ActionConfigurationMap'
                                  },
               'Name' => {
                           'type' => 'Str'
                         },
               'RunOrder' => {
                               'type' => 'Int'
                             }
             },
  'NameInRequest' => {
                       'RoleArn' => 'roleArn',
                       'OutputArtifacts' => 'outputArtifacts',
                       'Region' => 'region',
                       'ActionTypeId' => 'actionTypeId',
                       'RunOrder' => 'runOrder',
                       'Namespace' => 'namespace',
                       'Configuration' => 'configuration',
                       'Name' => 'name',
                       'InputArtifacts' => 'inputArtifacts'
                     },
  'IsRequired' => {
                    'ActionTypeId' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionDeclaration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionDeclaration object:

  $service_obj->Method(Att1 => { ActionTypeId => $value, ..., RunOrder => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionDeclaration object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionTypeId

=head1 DESCRIPTION

Represents information about an action declaration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionTypeId => CodePipeline_ActionTypeId

  Specifies the action type and the provider of the action.


=head2 Configuration => CodePipeline_ActionConfigurationMap

  The action's configuration. These are key-value pairs that specify
input values for an action. For more information, see Action Structure
Requirements in CodePipeline
(https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements).
For the list of configuration properties for the AWS CloudFormation
action type in CodePipeline, see Configuration Properties Reference
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/continuous-delivery-codepipeline-action-reference.html)
in the I<AWS CloudFormation User Guide>. For template snippets with
examples, see Using Parameter Override Functions with CodePipeline
Pipelines
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/continuous-delivery-codepipeline-parameter-override-functions.html)
in the I<AWS CloudFormation User Guide>.

The values can be represented in either JSON or YAML format. For
example, the JSON configuration item format is as follows:

I<JSON:>

C<"Configuration" : { Key : Value },>


=head2 InputArtifacts => ArrayRef[CodePipeline_InputArtifact]

  The name or ID of the artifact consumed by the action, such as a test
or build artifact.


=head2 B<REQUIRED> Name => Str

  The action declaration's name.


=head2 Namespace => Str

  The variable namespace associated with the action. All variables
produced as output by this action fall under this namespace.


=head2 OutputArtifacts => ArrayRef[CodePipeline_OutputArtifact]

  The name or ID of the result of the action declaration, such as a test
or build artifact.


=head2 Region => Str

  The action declaration's AWS Region, such as us-east-1.


=head2 RoleArn => Str

  The ARN of the IAM service role that performs the declared action. This
is assumed through the roleArn for the pipeline.


=head2 RunOrder => Int

  The order in which actions are run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


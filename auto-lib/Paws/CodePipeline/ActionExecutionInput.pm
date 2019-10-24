# Generated from default/object.tt
package Paws::CodePipeline::ActionExecutionInput;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::CodePipeline::Types qw/CodePipeline_ArtifactDetail CodePipeline_ActionConfigurationMap CodePipeline_ActionTypeId/;
  has ActionTypeId => (is => 'ro', isa => CodePipeline_ActionTypeId);
  has Configuration => (is => 'ro', isa => CodePipeline_ActionConfigurationMap);
  has InputArtifacts => (is => 'ro', isa => ArrayRef[CodePipeline_ArtifactDetail]);
  has Region => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'InputArtifacts' => {
                                     'class' => 'Paws::CodePipeline::ArtifactDetail',
                                     'type' => 'ArrayRef[CodePipeline_ArtifactDetail]'
                                   },
               'Configuration' => {
                                    'class' => 'Paws::CodePipeline::ActionConfigurationMap',
                                    'type' => 'CodePipeline_ActionConfigurationMap'
                                  },
               'Region' => {
                             'type' => 'Str'
                           },
               'ActionTypeId' => {
                                   'class' => 'Paws::CodePipeline::ActionTypeId',
                                   'type' => 'CodePipeline_ActionTypeId'
                                 }
             },
  'NameInRequest' => {
                       'RoleArn' => 'roleArn',
                       'InputArtifacts' => 'inputArtifacts',
                       'Configuration' => 'configuration',
                       'Region' => 'region',
                       'ActionTypeId' => 'actionTypeId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionExecutionInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionExecutionInput object:

  $service_obj->Method(Att1 => { ActionTypeId => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionExecutionInput object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionTypeId

=head1 DESCRIPTION

Input information used for an action execution.

=head1 ATTRIBUTES


=head2 ActionTypeId => CodePipeline_ActionTypeId

  


=head2 Configuration => CodePipeline_ActionConfigurationMap

  Configuration data for an action execution.


=head2 InputArtifacts => ArrayRef[CodePipeline_ArtifactDetail]

  Details of input artifacts of the action that correspond to the action
execution.


=head2 Region => Str

  The AWS Region for the action, such as us-east-1.


=head2 RoleArn => Str

  The ARN of the IAM service role that performs the declared action. This
is assumed through the roleArn for the pipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


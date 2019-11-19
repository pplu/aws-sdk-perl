# Generated from default/object.tt
package Paws::CodePipeline::ThirdPartyJobData;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodePipeline::Types qw/CodePipeline_Artifact CodePipeline_ActionConfiguration CodePipeline_ActionTypeId CodePipeline_PipelineContext CodePipeline_AWSSessionCredentials CodePipeline_EncryptionKey/;
  has ActionConfiguration => (is => 'ro', isa => CodePipeline_ActionConfiguration);
  has ActionTypeId => (is => 'ro', isa => CodePipeline_ActionTypeId);
  has ArtifactCredentials => (is => 'ro', isa => CodePipeline_AWSSessionCredentials);
  has ContinuationToken => (is => 'ro', isa => Str);
  has EncryptionKey => (is => 'ro', isa => CodePipeline_EncryptionKey);
  has InputArtifacts => (is => 'ro', isa => ArrayRef[CodePipeline_Artifact]);
  has OutputArtifacts => (is => 'ro', isa => ArrayRef[CodePipeline_Artifact]);
  has PipelineContext => (is => 'ro', isa => CodePipeline_PipelineContext);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ArtifactCredentials' => 'artifactCredentials',
                       'InputArtifacts' => 'inputArtifacts',
                       'ActionConfiguration' => 'actionConfiguration',
                       'PipelineContext' => 'pipelineContext',
                       'EncryptionKey' => 'encryptionKey',
                       'ActionTypeId' => 'actionTypeId',
                       'OutputArtifacts' => 'outputArtifacts',
                       'ContinuationToken' => 'continuationToken'
                     },
  'types' => {
               'ActionTypeId' => {
                                   'type' => 'CodePipeline_ActionTypeId',
                                   'class' => 'Paws::CodePipeline::ActionTypeId'
                                 },
               'OutputArtifacts' => {
                                      'class' => 'Paws::CodePipeline::Artifact',
                                      'type' => 'ArrayRef[CodePipeline_Artifact]'
                                    },
               'ContinuationToken' => {
                                        'type' => 'Str'
                                      },
               'ArtifactCredentials' => {
                                          'type' => 'CodePipeline_AWSSessionCredentials',
                                          'class' => 'Paws::CodePipeline::AWSSessionCredentials'
                                        },
               'InputArtifacts' => {
                                     'type' => 'ArrayRef[CodePipeline_Artifact]',
                                     'class' => 'Paws::CodePipeline::Artifact'
                                   },
               'ActionConfiguration' => {
                                          'class' => 'Paws::CodePipeline::ActionConfiguration',
                                          'type' => 'CodePipeline_ActionConfiguration'
                                        },
               'PipelineContext' => {
                                      'type' => 'CodePipeline_PipelineContext',
                                      'class' => 'Paws::CodePipeline::PipelineContext'
                                    },
               'EncryptionKey' => {
                                    'class' => 'Paws::CodePipeline::EncryptionKey',
                                    'type' => 'CodePipeline_EncryptionKey'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ThirdPartyJobData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ThirdPartyJobData object:

  $service_obj->Method(Att1 => { ActionConfiguration => $value, ..., PipelineContext => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ThirdPartyJobData object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionConfiguration

=head1 DESCRIPTION

Represents information about the job data for a partner action.

=head1 ATTRIBUTES


=head2 ActionConfiguration => CodePipeline_ActionConfiguration

  Represents information about an action configuration.


=head2 ActionTypeId => CodePipeline_ActionTypeId

  Represents information about an action type.


=head2 ArtifactCredentials => CodePipeline_AWSSessionCredentials

  Represents an AWS session credentials object. These credentials are
temporary credentials that are issued by AWS Secure Token Service
(STS). They can be used to access input and output artifacts in the
Amazon S3 bucket used to store artifact for the pipeline in AWS
CodePipeline.


=head2 ContinuationToken => Str

  A system-generated token, such as a AWS CodeDeploy deployment ID, that
a job requires to continue the job asynchronously.


=head2 EncryptionKey => CodePipeline_EncryptionKey

  The encryption key used to encrypt and decrypt data in the artifact
store for the pipeline, such as an AWS Key Management Service (AWS KMS)
key. This is optional and might not be present.


=head2 InputArtifacts => ArrayRef[CodePipeline_Artifact]

  The name of the artifact that is worked on by the action, if any. This
name might be system-generated, such as "MyApp", or it might be defined
by the user when the action is created. The input artifact name must
match the name of an output artifact generated by an action in an
earlier action or stage of the pipeline.


=head2 OutputArtifacts => ArrayRef[CodePipeline_Artifact]

  The name of the artifact that is the result of the action, if any. This
name might be system-generated, such as "MyBuiltApp", or it might be
defined by the user when the action is created.


=head2 PipelineContext => CodePipeline_PipelineContext

  Represents information about a pipeline to a job worker.

Does not include C<pipelineArn> and C<pipelineExecutionId> for
ThirdParty jobs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


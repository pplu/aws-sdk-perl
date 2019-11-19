# Generated from default/object.tt
package Paws::CodePipeline::JobData;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodePipeline::Types qw/CodePipeline_EncryptionKey CodePipeline_AWSSessionCredentials CodePipeline_ActionTypeId CodePipeline_PipelineContext CodePipeline_ActionConfiguration CodePipeline_Artifact/;
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
  'types' => {
               'ActionTypeId' => {
                                   'type' => 'CodePipeline_ActionTypeId',
                                   'class' => 'Paws::CodePipeline::ActionTypeId'
                                 },
               'OutputArtifacts' => {
                                      'type' => 'ArrayRef[CodePipeline_Artifact]',
                                      'class' => 'Paws::CodePipeline::Artifact'
                                    },
               'ContinuationToken' => {
                                        'type' => 'Str'
                                      },
               'PipelineContext' => {
                                      'class' => 'Paws::CodePipeline::PipelineContext',
                                      'type' => 'CodePipeline_PipelineContext'
                                    },
               'ActionConfiguration' => {
                                          'class' => 'Paws::CodePipeline::ActionConfiguration',
                                          'type' => 'CodePipeline_ActionConfiguration'
                                        },
               'EncryptionKey' => {
                                    'class' => 'Paws::CodePipeline::EncryptionKey',
                                    'type' => 'CodePipeline_EncryptionKey'
                                  },
               'InputArtifacts' => {
                                     'type' => 'ArrayRef[CodePipeline_Artifact]',
                                     'class' => 'Paws::CodePipeline::Artifact'
                                   },
               'ArtifactCredentials' => {
                                          'type' => 'CodePipeline_AWSSessionCredentials',
                                          'class' => 'Paws::CodePipeline::AWSSessionCredentials'
                                        }
             },
  'NameInRequest' => {
                       'ContinuationToken' => 'continuationToken',
                       'OutputArtifacts' => 'outputArtifacts',
                       'ActionTypeId' => 'actionTypeId',
                       'PipelineContext' => 'pipelineContext',
                       'ActionConfiguration' => 'actionConfiguration',
                       'EncryptionKey' => 'encryptionKey',
                       'ArtifactCredentials' => 'artifactCredentials',
                       'InputArtifacts' => 'inputArtifacts'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::JobData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::JobData object:

  $service_obj->Method(Att1 => { ActionConfiguration => $value, ..., PipelineContext => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::JobData object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionConfiguration

=head1 DESCRIPTION

Represents other information about a job required for a job worker to
complete the job.

=head1 ATTRIBUTES


=head2 ActionConfiguration => CodePipeline_ActionConfiguration

  Represents information about an action configuration.


=head2 ActionTypeId => CodePipeline_ActionTypeId

  Represents information about an action type.


=head2 ArtifactCredentials => CodePipeline_AWSSessionCredentials

  Represents an AWS session credentials object. These credentials are
temporary credentials that are issued by AWS Secure Token Service
(STS). They can be used to access input and output artifacts in the
Amazon S3 bucket used to store artifacts for the pipeline in AWS
CodePipeline.


=head2 ContinuationToken => Str

  A system-generated token, such as a AWS CodeDeploy deployment ID,
required by a job to continue the job asynchronously.


=head2 EncryptionKey => CodePipeline_EncryptionKey

  Represents information about the key used to encrypt data in the
artifact store, such as an AWS Key Management Service (AWS KMS) key.


=head2 InputArtifacts => ArrayRef[CodePipeline_Artifact]

  The artifact supplied to the job.


=head2 OutputArtifacts => ArrayRef[CodePipeline_Artifact]

  The output of the job.


=head2 PipelineContext => CodePipeline_PipelineContext

  Represents information about a pipeline to a job worker.

Includes C<pipelineArn> and C<pipelineExecutionId> for custom jobs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


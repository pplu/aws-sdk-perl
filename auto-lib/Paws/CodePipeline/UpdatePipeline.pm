
package Paws::CodePipeline::UpdatePipeline;
  use Moose;
  has Pipeline => (is => 'ro', isa => 'Paws::CodePipeline::PipelineDeclaration', traits => ['NameInRequest'], request_name => 'pipeline' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::UpdatePipelineOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::UpdatePipeline - Arguments for method UpdatePipeline on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePipeline on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method UpdatePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePipeline.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $UpdatePipelineOutput = $codepipeline->UpdatePipeline(
      Pipeline => {
        artifactStore => {
          location      => 'MyArtifactStoreLocation',    # min: 3, max: 63
          type          => 'S3',                         # values: S3
          encryptionKey => {
            id   => 'MyEncryptionKeyId',                 # min: 1, max: 100
            type => 'KMS',                               # values: KMS

          },    # OPTIONAL
        },
        name    => 'MyPipelineName',    # min: 1, max: 100
        roleArn => 'MyRoleArn',         # max: 1024
        stages  => [
          {
            actions => [
              {
                actionTypeId => {
                  category => 'Source'
                  ,    # values: Source, Build, Deploy, Test, Invoke, Approval
                  owner => 'AWS',    # values: AWS, ThirdParty, Custom
                  provider => 'MyActionProvider',    # min: 1, max: 25
                  version  => 'MyVersion',           # min: 1, max: 9

                },
                name          => 'MyActionName',     # min: 1, max: 100
                configuration => {
                  'MyActionConfigurationKey' => 'MyActionConfigurationValue'
                  ,    # key: min: 1, max: 50, value: min: 1, max: 1000
                },    # OPTIONAL
                inputArtifacts => [
                  {
                    name => 'MyArtifactName',    # min: 1, max: 100

                  },
                  ...
                ],                               # OPTIONAL
                outputArtifacts => [
                  {
                    name => 'MyArtifactName',    # min: 1, max: 100

                  },
                  ...
                ],                               # OPTIONAL
                roleArn  => 'MyRoleArn',         # max: 1024
                runOrder => 1,                   # min: 1, max: 999; OPTIONAL
              },
              ...
            ],
            name     => 'MyStageName',           # min: 1, max: 100
            blockers => [
              {
                name => 'MyBlockerName',         # min: 1, max: 100
                type => 'Schedule',              # values: Schedule

              },
              ...
            ],                                   # OPTIONAL
          },
          ...
        ],
        version => 1,                            # min: 1, ; OPTIONAL
      },

    );

    # Results:
    my $pipeline = $UpdatePipelineOutput->pipeline;

    # Returns a L<Paws::CodePipeline::UpdatePipelineOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/UpdatePipeline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Pipeline => L<Paws::CodePipeline::PipelineDeclaration>

The name of the pipeline to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePipeline in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


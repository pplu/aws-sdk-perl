
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
        Name    => 'MyPipelineName',    # min: 1, max: 100
        RoleArn => 'MyRoleArn',         # max: 1024
        Stages  => [
          {
            Actions => [
              {
                ActionTypeId => {
                  Category => 'Source'
                  ,    # values: Source, Build, Deploy, Test, Invoke, Approval
                  Owner => 'AWS',    # values: AWS, ThirdParty, Custom
                  Provider => 'MyActionProvider',    # min: 1, max: 25
                  Version  => 'MyVersion',           # min: 1, max: 9

                },
                Name          => 'MyActionName',     # min: 1, max: 100
                Configuration => {
                  'MyActionConfigurationKey' => 'MyActionConfigurationValue'
                  ,    # key: min: 1, max: 50, value: min: 1, max: 1000
                },    # OPTIONAL
                InputArtifacts => [
                  {
                    Name => 'MyArtifactName',    # min: 1, max: 100

                  },
                  ...
                ],                               # OPTIONAL
                OutputArtifacts => [
                  {
                    Name => 'MyArtifactName',    # min: 1, max: 100

                  },
                  ...
                ],                               # OPTIONAL
                Region   => 'MyAWSRegionName',   # min: 4, max: 30; OPTIONAL
                RoleArn  => 'MyRoleArn',         # max: 1024
                RunOrder => 1,                   # min: 1, max: 999; OPTIONAL
              },
              ...
            ],
            Name     => 'MyStageName',           # min: 1, max: 100
            Blockers => [
              {
                Name => 'MyBlockerName',         # min: 1, max: 100
                Type => 'Schedule',              # values: Schedule

              },
              ...
            ],                                   # OPTIONAL
          },
          ...
        ],
        ArtifactStore => {
          Location      => 'MyArtifactStoreLocation',    # min: 3, max: 63
          Type          => 'S3',                         # values: S3
          EncryptionKey => {
            Id   => 'MyEncryptionKeyId',                 # min: 1, max: 100
            Type => 'KMS',                               # values: KMS

          },    # OPTIONAL
        },    # OPTIONAL
        ArtifactStores => {
          'MyAWSRegionName' => {
            Location      => 'MyArtifactStoreLocation',    # min: 3, max: 63
            Type          => 'S3',                         # values: S3
            EncryptionKey => {
              Id   => 'MyEncryptionKeyId',                 # min: 1, max: 100
              Type => 'KMS',                               # values: KMS

            },    # OPTIONAL
          },    # key: min: 4, max: 30; OPTIONAL, value: OPTIONAL
        },    # OPTIONAL
        Version => 1,    # min: 1; OPTIONAL
      },

    );

    # Results:
    my $Pipeline = $UpdatePipelineOutput->Pipeline;

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


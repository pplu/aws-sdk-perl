
package Paws::SageMaker::CreatePipeline;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has PipelineDefinition => (is => 'ro', isa => 'Str', required => 1);
  has PipelineDescription => (is => 'ro', isa => 'Str');
  has PipelineDisplayName => (is => 'ro', isa => 'Str');
  has PipelineName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreatePipelineResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreatePipeline - Arguments for method CreatePipeline on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePipeline on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreatePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePipeline.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreatePipelineResponse = $api . sagemaker->CreatePipeline(
      ClientRequestToken  => 'MyIdempotencyToken',
      PipelineDefinition  => 'MyPipelineDefinition',
      PipelineName        => 'MyPipelineName',
      RoleArn             => 'MyRoleArn',
      PipelineDescription => 'MyPipelineDescription',    # OPTIONAL
      PipelineDisplayName => 'MyPipelineName',           # OPTIONAL
      Tags                => [
        {
          Key   => 'MyTagKey',                           # min: 1, max: 128
          Value => 'MyTagValue',                         # max: 256

        },
        ...
      ],                                                 # OPTIONAL
    );

    # Results:
    my $PipelineArn = $CreatePipelineResponse->PipelineArn;

    # Returns a L<Paws::SageMaker::CreatePipelineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreatePipeline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the operation. An idempotent operation completes no more
than one time.



=head2 B<REQUIRED> PipelineDefinition => Str

The JSON pipeline definition of the pipeline.



=head2 PipelineDescription => Str

A description of the pipeline.



=head2 PipelineDisplayName => Str

The display name of the pipeline.



=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the role used by the pipeline to
access and create resources.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

A list of tags to apply to the created pipeline.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePipeline in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


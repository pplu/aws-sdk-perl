
package Paws::SageMaker::CreateEdgePackagingJob;
  use Moose;
  has CompilationJobName => (is => 'ro', isa => 'Str', required => 1);
  has EdgePackagingJobName => (is => 'ro', isa => 'Str', required => 1);
  has ModelName => (is => 'ro', isa => 'Str', required => 1);
  has ModelVersion => (is => 'ro', isa => 'Str', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMaker::EdgeOutputConfig', required => 1);
  has ResourceKey => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEdgePackagingJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateEdgePackagingJob - Arguments for method CreateEdgePackagingJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEdgePackagingJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateEdgePackagingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEdgePackagingJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    $api . sagemaker->CreateEdgePackagingJob(
      CompilationJobName   => 'MyEntityName',
      EdgePackagingJobName => 'MyEntityName',
      ModelName            => 'MyEntityName',
      ModelVersion         => 'MyEdgeVersion',
      OutputConfig         => {
        S3OutputLocation => 'MyS3Uri',       # max: 1024
        KmsKeyId         => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },
      RoleArn     => 'MyRoleArn',
      ResourceKey => 'MyKmsKeyId',           # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateEdgePackagingJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CompilationJobName => Str

The name of the SageMaker Neo compilation job that will be used to
locate model artifacts for packaging.



=head2 B<REQUIRED> EdgePackagingJobName => Str

The name of the edge packaging job.



=head2 B<REQUIRED> ModelName => Str

The name of the model.



=head2 B<REQUIRED> ModelVersion => Str

The version of the model.



=head2 B<REQUIRED> OutputConfig => L<Paws::SageMaker::EdgeOutputConfig>

Provides information about the output location for the packaged model.



=head2 ResourceKey => Str

The CMK to use when encrypting the EBS volume the edge packaging job
runs on.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that enables Amazon
SageMaker to download and upload the model, and to contact SageMaker
Neo.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Creates tags for the packaging job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEdgePackagingJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


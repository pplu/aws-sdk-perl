
package Paws::SageMaker::CreateModelPackage;
  use Moose;
  has CertifyForMarketplace => (is => 'ro', isa => 'Bool');
  has InferenceSpecification => (is => 'ro', isa => 'Paws::SageMaker::InferenceSpecification');
  has ModelPackageDescription => (is => 'ro', isa => 'Str');
  has ModelPackageName => (is => 'ro', isa => 'Str', required => 1);
  has SourceAlgorithmSpecification => (is => 'ro', isa => 'Paws::SageMaker::SourceAlgorithmSpecification');
  has ValidationSpecification => (is => 'ro', isa => 'Paws::SageMaker::ModelPackageValidationSpecification');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateModelPackage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateModelPackageOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateModelPackage - Arguments for method CreateModelPackage on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateModelPackage on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateModelPackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateModelPackage.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateModelPackageOutput = $api . sagemaker->CreateModelPackage(
      ModelPackageName       => 'MyEntityName',
      CertifyForMarketplace  => 1,                # OPTIONAL
      InferenceSpecification => {
        Containers => [
          {
            Image             => 'MyImage',                # max: 255
            ContainerHostname => 'MyContainerHostname',    # max: 63; OPTIONAL
            ImageDigest       => 'MyImageDigest',          # max: 72; OPTIONAL
            ModelDataUrl      => 'MyUrl',                  # max: 1024; OPTIONAL
            ProductId         => 'MyProductId',            # OPTIONAL
          },
          ...
        ],                                                 # min: 1, max: 1
        SupportedContentTypes => [
          'MyContentType', ...                             # max: 256
        ],
        SupportedRealtimeInferenceInstanceTypes => [
          'ml.t2.medium',
          ... # values: ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
        ],
        SupportedResponseMIMETypes => [
          'MyResponseMIMEType', ...    # max: 1024
        ],
        SupportedTransformInstanceTypes => [
          'ml.m4.xlarge',
          ... # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
        ],    # min: 1

      },    # OPTIONAL
      ModelPackageDescription      => 'MyEntityDescription',    # OPTIONAL
      SourceAlgorithmSpecification => {
        SourceAlgorithms => [
          {
            AlgorithmName => 'MyArnOrName',    # min: 1, max: 170
            ModelDataUrl  => 'MyUrl',          # max: 1024; OPTIONAL
          },
          ...
        ],                                     # min: 1, max: 1

      },    # OPTIONAL
      ValidationSpecification => {
        ValidationProfiles => [
          {
            ProfileName            => 'MyEntityName',    # min: 1, max: 63
            TransformJobDefinition => {
              TransformInput => {
                DataSource => {
                  S3DataSource => {
                    S3DataType => 'ManifestFile'
                    ,    # values: ManifestFile, S3Prefix, AugmentedManifestFile
                    S3Uri => 'MyS3Uri',    # max: 1024

                  },

                },
                CompressionType => 'None',    # values: None, Gzip; OPTIONAL
                ContentType => 'MyContentType',    # max: 256
                SplitType =>
                  'None',    # values: None, Line, RecordIO, TFRecord; OPTIONAL
              },
              TransformOutput => {
                S3OutputPath => 'MyS3Uri',       # max: 1024
                Accept       => 'MyAccept',      # max: 256; OPTIONAL
                AssembleWith => 'None',          # values: None, Line; OPTIONAL
                KmsKeyId     => 'MyKmsKeyId',    # max: 2048; OPTIONAL
              },
              TransformResources => {
                InstanceCount => 1,               # min: 1
                InstanceType  => 'ml.m4.xlarge'
                , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
                VolumeKmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
              },
              BatchStrategy =>
                'MultiRecord',    # values: MultiRecord, SingleRecord; OPTIONAL
              Environment => {
                'MyTransformEnvironmentKey' => 'MyTransformEnvironmentValue'
                ,                 # key: max: 1024, value: max: 10240
              },    # max: 16; OPTIONAL
              MaxConcurrentTransforms => 1,    # OPTIONAL
              MaxPayloadInMB          => 1,    # OPTIONAL
            },

          },
          ...
        ],                                     # min: 1, max: 1
        ValidationRole => 'MyRoleArn',         # min: 20, max: 2048

      },    # OPTIONAL
    );

    # Results:
    my $ModelPackageArn = $CreateModelPackageOutput->ModelPackageArn;

    # Returns a L<Paws::SageMaker::CreateModelPackageOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateModelPackage>

=head1 ATTRIBUTES


=head2 CertifyForMarketplace => Bool

Whether to certify the model package for listing on AWS Marketplace.



=head2 InferenceSpecification => L<Paws::SageMaker::InferenceSpecification>

Specifies details about inference jobs that can be run with models
based on this model package, including the following:

=over

=item *

The Amazon ECR paths of containers that contain the inference code and
model artifacts.

=item *

The instance types that the model package supports for transform jobs
and real-time endpoints used for inference.

=item *

The input and output content formats that the model package supports
for inference.

=back




=head2 ModelPackageDescription => Str

A description of the model package.



=head2 B<REQUIRED> ModelPackageName => Str

The name of the model package. The name must have 1 to 63 characters.
Valid characters are a-z, A-Z, 0-9, and - (hyphen).



=head2 SourceAlgorithmSpecification => L<Paws::SageMaker::SourceAlgorithmSpecification>

Details about the algorithm that was used to create the model package.



=head2 ValidationSpecification => L<Paws::SageMaker::ModelPackageValidationSpecification>

Specifies configurations for one or more transform jobs that Amazon
SageMaker runs to test the model package.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModelPackage in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


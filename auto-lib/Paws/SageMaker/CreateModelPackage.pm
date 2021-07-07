
package Paws::SageMaker::CreateModelPackage;
  use Moose;
  has CertifyForMarketplace => (is => 'ro', isa => 'Bool');
  has ClientToken => (is => 'ro', isa => 'Str');
  has InferenceSpecification => (is => 'ro', isa => 'Paws::SageMaker::InferenceSpecification');
  has MetadataProperties => (is => 'ro', isa => 'Paws::SageMaker::MetadataProperties');
  has ModelApprovalStatus => (is => 'ro', isa => 'Str');
  has ModelMetrics => (is => 'ro', isa => 'Paws::SageMaker::ModelMetrics');
  has ModelPackageDescription => (is => 'ro', isa => 'Str');
  has ModelPackageGroupName => (is => 'ro', isa => 'Str');
  has ModelPackageName => (is => 'ro', isa => 'Str');
  has SourceAlgorithmSpecification => (is => 'ro', isa => 'Paws::SageMaker::SourceAlgorithmSpecification');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
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
      CertifyForMarketplace  => 1,                  # OPTIONAL
      ClientToken            => 'MyClientToken',    # OPTIONAL
      InferenceSpecification => {
        Containers => [
          {
            Image             => 'MyContainerImage',       # max: 255
            ContainerHostname => 'MyContainerHostname',    # max: 63; OPTIONAL
            ImageDigest       => 'MyImageDigest',          # max: 72; OPTIONAL
            ModelDataUrl      => 'MyUrl',                  # max: 1024; OPTIONAL
            ProductId         => 'MyProductId',            # max: 256; OPTIONAL
          },
          ...
        ],    # min: 1, max: 1
        SupportedContentTypes => [
          'MyContentType', ...    # max: 256
        ],
        SupportedResponseMIMETypes => [
          'MyResponseMIMEType', ...    # max: 1024
        ],
        SupportedRealtimeInferenceInstanceTypes => [
          'ml.t2.medium',
          ... # values: ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.12xlarge, ml.m5d.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.large, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.12xlarge, ml.r5.24xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.12xlarge, ml.r5d.24xlarge, ml.inf1.xlarge, ml.inf1.2xlarge, ml.inf1.6xlarge, ml.inf1.24xlarge
        ],    # OPTIONAL
        SupportedTransformInstanceTypes => [
          'ml.m4.xlarge',
          ... # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge
        ],    # min: 1; OPTIONAL
      },    # OPTIONAL
      MetadataProperties => {
        CommitId    => 'MyMetadataPropertyValue',    # max: 1024; OPTIONAL
        GeneratedBy => 'MyMetadataPropertyValue',    # max: 1024; OPTIONAL
        ProjectId   => 'MyMetadataPropertyValue',    # max: 1024; OPTIONAL
        Repository  => 'MyMetadataPropertyValue',    # max: 1024; OPTIONAL
      },    # OPTIONAL
      ModelApprovalStatus => 'Approved',    # OPTIONAL
      ModelMetrics        => {
        Bias => {
          Report => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Explainability => {
          Report => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        ModelDataQuality => {
          Constraints => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
          Statistics => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        ModelQuality => {
          Constraints => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
          Statistics => {
            ContentType   => 'MyContentType',      # max: 256
            S3Uri         => 'MyS3Uri',            # max: 1024
            ContentDigest => 'MyContentDigest',    # max: 72; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ModelPackageDescription      => 'MyEntityDescription',    # OPTIONAL
      ModelPackageGroupName        => 'MyEntityName',           # OPTIONAL
      ModelPackageName             => 'MyEntityName',           # OPTIONAL
      SourceAlgorithmSpecification => {
        SourceAlgorithms => [
          {
            AlgorithmName => 'MyArnOrName',    # min: 1, max: 170
            ModelDataUrl  => 'MyUrl',          # max: 1024; OPTIONAL
          },
          ...
        ],    # min: 1, max: 1

      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
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
                ContentType     => 'MyContentType',    # max: 256
                SplitType       =>
                  'None',    # values: None, Line, RecordIO, TFRecord; OPTIONAL
              },
              TransformOutput => {
                S3OutputPath => 'MyS3Uri',       # max: 1024
                Accept       => 'MyAccept',      # max: 256; OPTIONAL
                AssembleWith => 'None',          # values: None, Line; OPTIONAL
                KmsKeyId     => 'MyKmsKeyId',    # max: 2048; OPTIONAL
              },
              TransformResources => {
                InstanceCount => 1,                # min: 1
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
        ],    # min: 1, max: 1
        ValidationRole => 'MyRoleArn',    # min: 20, max: 2048

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

This parameter is optional for unversioned models, and does not apply
to versioned models.



=head2 ClientToken => Str

A unique token that guarantees that the call to this API is idempotent.



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




=head2 MetadataProperties => L<Paws::SageMaker::MetadataProperties>





=head2 ModelApprovalStatus => Str

Whether the model is approved for deployment.

This parameter is optional for versioned models, and does not apply to
unversioned models.

For versioned models, the value of this parameter must be set to
C<Approved> to deploy the model.

Valid values are: C<"Approved">, C<"Rejected">, C<"PendingManualApproval">

=head2 ModelMetrics => L<Paws::SageMaker::ModelMetrics>

A structure that contains model metrics reports.



=head2 ModelPackageDescription => Str

A description of the model package.



=head2 ModelPackageGroupName => Str

The name of the model group that this model version belongs to.

This parameter is required for versioned models, and does not apply to
unversioned models.



=head2 ModelPackageName => Str

The name of the model package. The name must have 1 to 63 characters.
Valid characters are a-z, A-Z, 0-9, and - (hyphen).

This parameter is required for unversioned models. It is not applicable
to versioned models.



=head2 SourceAlgorithmSpecification => L<Paws::SageMaker::SourceAlgorithmSpecification>

Details about the algorithm that was used to create the model package.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

A list of key value pairs associated with the model. For more
information, see Tagging AWS resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<AWS General Reference Guide>.



=head2 ValidationSpecification => L<Paws::SageMaker::ModelPackageValidationSpecification>

Specifies configurations for one or more transform jobs that Amazon
SageMaker runs to test the model package.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModelPackage in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


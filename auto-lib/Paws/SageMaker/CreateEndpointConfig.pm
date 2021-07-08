
package Paws::SageMaker::CreateEndpointConfig;
  use Moose;
  has DataCaptureConfig => (is => 'ro', isa => 'Paws::SageMaker::DataCaptureConfig');
  has EndpointConfigName => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has ProductionVariants => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ProductionVariant]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEndpointConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateEndpointConfigOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateEndpointConfig - Arguments for method CreateEndpointConfig on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEndpointConfig on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateEndpointConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEndpointConfig.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateEndpointConfigOutput = $api . sagemaker->CreateEndpointConfig(
      EndpointConfigName => 'MyEndpointConfigName',
      ProductionVariants => [
        {
          InitialInstanceCount => 1,               # min: 1
          InstanceType         => 'ml.t2.medium'
          , # values: ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.12xlarge, ml.m5d.24xlarge, ml.c4.large, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.large, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.12xlarge, ml.r5.24xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.12xlarge, ml.r5d.24xlarge, ml.inf1.xlarge, ml.inf1.2xlarge, ml.inf1.6xlarge, ml.inf1.24xlarge
          ModelName       => 'MyModelName',      # max: 63
          VariantName     => 'MyVariantName',    # max: 63
          AcceleratorType => 'ml.eia1.medium'
          , # values: ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge, ml.eia2.medium, ml.eia2.large, ml.eia2.xlarge; OPTIONAL
          CoreDumpConfig => {
            DestinationS3Uri => 'MyDestinationS3Uri',    # max: 512
            KmsKeyId         => 'MyKmsKeyId',            # max: 2048; OPTIONAL
          },    # OPTIONAL
          InitialVariantWeight => 1.0,    # OPTIONAL
        },
        ...
      ],
      DataCaptureConfig => {
        CaptureOptions => [
          {
            CaptureMode => 'Input',    # values: Input, Output

          },
          ...
        ],    # min: 1, max: 2
        DestinationS3Uri          => 'MyDestinationS3Uri',    # max: 512
        InitialSamplingPercentage => 1,                       # max: 100
        CaptureContentTypeHeader  => {
          CsvContentTypes => [
            'MyCsvContentType', ...                           # min: 1, max: 256
          ],    # min: 1, max: 10; OPTIONAL
          JsonContentTypes => [
            'MyJsonContentType', ...    # min: 1, max: 256
          ],    # min: 1, max: 10; OPTIONAL
        },    # OPTIONAL
        EnableCapture => 1,               # OPTIONAL
        KmsKeyId      => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },    # OPTIONAL
      KmsKeyId => 'MyKmsKeyId',    # OPTIONAL
      Tags     => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $EndpointConfigArn = $CreateEndpointConfigOutput->EndpointConfigArn;

    # Returns a L<Paws::SageMaker::CreateEndpointConfigOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateEndpointConfig>

=head1 ATTRIBUTES


=head2 DataCaptureConfig => L<Paws::SageMaker::DataCaptureConfig>





=head2 B<REQUIRED> EndpointConfigName => Str

The name of the endpoint configuration. You specify this name in a
CreateEndpoint request.



=head2 KmsKeyId => Str

The Amazon Resource Name (ARN) of a Amazon Web Services Key Management
Service key that Amazon SageMaker uses to encrypt data on the storage
volume attached to the ML compute instance that hosts the endpoint.

The KmsKeyId can be any of the following formats:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Alias name: C<alias/ExampleAlias>

=item *

Alias name ARN:
C<arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias>

=back

The KMS key policy must grant permission to the IAM role that you
specify in your C<CreateEndpoint>, C<UpdateEndpoint> requests. For more
information, refer to the Amazon Web Services Key Management Service
section Using Key Policies in Amazon Web Services KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)

Certain Nitro-based instances include local storage, dependent on the
instance type. Local storage volumes are encrypted using a hardware
module on the instance. You can't request a C<KmsKeyId> when using an
instance type with local storage. If any of the models that you specify
in the C<ProductionVariants> parameter use nitro-based instances with
local storage, do not specify a value for the C<KmsKeyId> parameter. If
you specify a value for C<KmsKeyId> when using any nitro-based
instances with local storage, the call to C<CreateEndpointConfig>
fails.

For a list of instance types that support local instance storage, see
Instance Store Volumes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html#instance-store-volumes).

For more information about local instance storage encryption, see SSD
Instance Store Volumes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ssd-instance-store.html).



=head2 B<REQUIRED> ProductionVariants => ArrayRef[L<Paws::SageMaker::ProductionVariant>]

An list of C<ProductionVariant> objects, one for each model that you
want to host at this endpoint.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs. You can use tags to categorize your Amazon
Web Services resources in different ways, for example, by purpose,
owner, or environment. For more information, see Tagging Amazon Web
Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEndpointConfig in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


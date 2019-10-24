# Generated from json/callargs_class.tt

package Paws::SageMaker::CreateModel;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::SageMaker::Types qw/SageMaker_Tag SageMaker_ContainerDefinition SageMaker_VpcConfig/;
  has Containers => (is => 'ro', isa => ArrayRef[SageMaker_ContainerDefinition], predicate => 1);
  has EnableNetworkIsolation => (is => 'ro', isa => Bool, predicate => 1);
  has ExecutionRoleArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ModelName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PrimaryContainer => (is => 'ro', isa => SageMaker_ContainerDefinition, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[SageMaker_Tag], predicate => 1);
  has VpcConfig => (is => 'ro', isa => SageMaker_VpcConfig, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateModel');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SageMaker::CreateModelOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ModelName' => {
                                'type' => 'Str'
                              },
               'Containers' => {
                                 'class' => 'Paws::SageMaker::ContainerDefinition',
                                 'type' => 'ArrayRef[SageMaker_ContainerDefinition]'
                               },
               'ExecutionRoleArn' => {
                                       'type' => 'Str'
                                     },
               'VpcConfig' => {
                                'class' => 'Paws::SageMaker::VpcConfig',
                                'type' => 'SageMaker_VpcConfig'
                              },
               'EnableNetworkIsolation' => {
                                             'type' => 'Bool'
                                           },
               'Tags' => {
                           'class' => 'Paws::SageMaker::Tag',
                           'type' => 'ArrayRef[SageMaker_Tag]'
                         },
               'PrimaryContainer' => {
                                       'class' => 'Paws::SageMaker::ContainerDefinition',
                                       'type' => 'SageMaker_ContainerDefinition'
                                     }
             },
  'IsRequired' => {
                    'ModelName' => 1,
                    'ExecutionRoleArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateModel - Arguments for method CreateModel on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateModel on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateModel.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateModelOutput = $api . sagemaker->CreateModel(
      ExecutionRoleArn => 'MyRoleArn',
      ModelName        => 'MyModelName',
      Containers       => [
        {
          ContainerHostname => 'MyContainerHostname',    # max: 63; OPTIONAL
          Environment       => {
            'MyEnvironmentKey' =>
              'MyEnvironmentValue',    # key: max: 1024, value: max: 1024
          },    # max: 16; OPTIONAL
          Image            => 'MyImage',        # max: 255; OPTIONAL
          ModelDataUrl     => 'MyUrl',          # max: 1024; OPTIONAL
          ModelPackageName => 'MyArnOrName',    # min: 1, max: 170; OPTIONAL
        },
        ...
      ],                                        # OPTIONAL
      EnableNetworkIsolation => 1,              # OPTIONAL
      PrimaryContainer       => {
        ContainerHostname => 'MyContainerHostname',    # max: 63; OPTIONAL
        Environment       => {
          'MyEnvironmentKey' =>
            'MyEnvironmentValue',    # key: max: 1024, value: max: 1024
        },    # max: 16; OPTIONAL
        Image            => 'MyImage',        # max: 255; OPTIONAL
        ModelDataUrl     => 'MyUrl',          # max: 1024; OPTIONAL
        ModelPackageName => 'MyArnOrName',    # min: 1, max: 170; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],                            # OPTIONAL
      VpcConfig => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...    # max: 32
        ],                            # min: 1, max: 5
        Subnets => [
          'MySubnetId', ...           # max: 32
        ],                            # min: 1, max: 16

      },    # OPTIONAL
    );

    # Results:
    my $ModelArn = $CreateModelOutput->ModelArn;

    # Returns a L<Paws::SageMaker::CreateModelOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateModel>

=head1 ATTRIBUTES


=head2 Containers => ArrayRef[SageMaker_ContainerDefinition]

Specifies the containers in the inference pipeline.



=head2 EnableNetworkIsolation => Bool

Isolates the model container. No inbound or outbound network calls can
be made to or from the model container.

The Semantic Segmentation built-in algorithm does not support network
isolation.



=head2 B<REQUIRED> ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker
can assume to access model artifacts and docker image for deployment on
ML compute instances or for batch transform jobs. Deploying on ML
compute instances is part of model hosting. For more information, see
Amazon SageMaker Roles
(https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html).

To be able to pass this role to Amazon SageMaker, the caller of this
API must have the C<iam:PassRole> permission.



=head2 B<REQUIRED> ModelName => Str

The name of the new model.



=head2 PrimaryContainer => SageMaker_ContainerDefinition

The location of the primary docker image containing inference code,
associated artifacts, and custom environment map that the inference
code uses when the model is deployed for predictions.



=head2 Tags => ArrayRef[SageMaker_Tag]

An array of key-value pairs. For more information, see Using Cost
Allocation Tags
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what)
in the I<AWS Billing and Cost Management User Guide>.



=head2 VpcConfig => SageMaker_VpcConfig

A VpcConfig
(https://docs.aws.amazon.com/sagemaker/latest/dg/API_VpcConfig.html)
object that specifies the VPC that you want your model to connect to.
Control access to and from your model container by configuring the VPC.
C<VpcConfig> is used in hosting services and in batch transform. For
more information, see Protect Endpoints by Using an Amazon Virtual
Private Cloud
(https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html) and
Protect Data in Batch Transform Jobs by Using an Amazon Virtual Private
Cloud (https://docs.aws.amazon.com/sagemaker/latest/dg/batch-vpc.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModel in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


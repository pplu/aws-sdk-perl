# Generated from json/callresult_class.tt

package Paws::SageMaker::DescribeModelOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::SageMaker::Types qw/SageMaker_ContainerDefinition SageMaker_VpcConfig/;
  has Containers => (is => 'ro', isa => ArrayRef[SageMaker_ContainerDefinition]);
  has CreationTime => (is => 'ro', isa => Str, required => 1);
  has EnableNetworkIsolation => (is => 'ro', isa => Bool);
  has ExecutionRoleArn => (is => 'ro', isa => Str, required => 1);
  has ModelArn => (is => 'ro', isa => Str, required => 1);
  has ModelName => (is => 'ro', isa => Str, required => 1);
  has PrimaryContainer => (is => 'ro', isa => SageMaker_ContainerDefinition);
  has VpcConfig => (is => 'ro', isa => SageMaker_VpcConfig);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ModelName' => {
                                'type' => 'Str'
                              },
               'EnableNetworkIsolation' => {
                                             'type' => 'Bool'
                                           },
               'VpcConfig' => {
                                'type' => 'SageMaker_VpcConfig',
                                'class' => 'Paws::SageMaker::VpcConfig'
                              },
               'ModelArn' => {
                               'type' => 'Str'
                             },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'PrimaryContainer' => {
                                       'class' => 'Paws::SageMaker::ContainerDefinition',
                                       'type' => 'SageMaker_ContainerDefinition'
                                     },
               'ExecutionRoleArn' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Containers' => {
                                 'class' => 'Paws::SageMaker::ContainerDefinition',
                                 'type' => 'ArrayRef[SageMaker_ContainerDefinition]'
                               }
             },
  'IsRequired' => {
                    'CreationTime' => 1,
                    'ExecutionRoleArn' => 1,
                    'ModelName' => 1,
                    'ModelArn' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelOutput

=head1 ATTRIBUTES


=head2 Containers => ArrayRef[SageMaker_ContainerDefinition]

The containers in the inference pipeline.


=head2 B<REQUIRED> CreationTime => Str

A timestamp that shows when the model was created.


=head2 EnableNetworkIsolation => Bool

If C<True>, no inbound or outbound network calls can be made to or from
the model container.

The Semantic Segmentation built-in algorithm does not support network
isolation.


=head2 B<REQUIRED> ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that you specified for
the model.


=head2 B<REQUIRED> ModelArn => Str

The Amazon Resource Name (ARN) of the model.


=head2 B<REQUIRED> ModelName => Str

Name of the Amazon SageMaker model.


=head2 PrimaryContainer => SageMaker_ContainerDefinition

The location of the primary inference code, associated artifacts, and
custom environment map that the inference code uses when it is deployed
in production.


=head2 VpcConfig => SageMaker_VpcConfig

A VpcConfig object that specifies the VPC that this model has access
to. For more information, see Protect Endpoints by Using an Amazon
Virtual Private Cloud
(https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html)


=head2 _request_id => Str


=cut

1;
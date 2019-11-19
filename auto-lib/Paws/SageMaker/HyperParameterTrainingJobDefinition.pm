# Generated from default/object.tt
package Paws::SageMaker::HyperParameterTrainingJobDefinition;
  use Moo;
  use Types::Standard qw/Bool ArrayRef Str/;
  use Paws::SageMaker::Types qw/SageMaker_HyperParameters SageMaker_HyperParameterAlgorithmSpecification SageMaker_ResourceConfig SageMaker_StoppingCondition SageMaker_Channel SageMaker_VpcConfig SageMaker_OutputDataConfig SageMaker_CheckpointConfig/;
  has AlgorithmSpecification => (is => 'ro', isa => SageMaker_HyperParameterAlgorithmSpecification, required => 1);
  has CheckpointConfig => (is => 'ro', isa => SageMaker_CheckpointConfig);
  has EnableInterContainerTrafficEncryption => (is => 'ro', isa => Bool);
  has EnableManagedSpotTraining => (is => 'ro', isa => Bool);
  has EnableNetworkIsolation => (is => 'ro', isa => Bool);
  has InputDataConfig => (is => 'ro', isa => ArrayRef[SageMaker_Channel]);
  has OutputDataConfig => (is => 'ro', isa => SageMaker_OutputDataConfig, required => 1);
  has ResourceConfig => (is => 'ro', isa => SageMaker_ResourceConfig, required => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1);
  has StaticHyperParameters => (is => 'ro', isa => SageMaker_HyperParameters);
  has StoppingCondition => (is => 'ro', isa => SageMaker_StoppingCondition, required => 1);
  has VpcConfig => (is => 'ro', isa => SageMaker_VpcConfig);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'OutputDataConfig' => 1,
                    'AlgorithmSpecification' => 1,
                    'StoppingCondition' => 1,
                    'ResourceConfig' => 1,
                    'RoleArn' => 1
                  },
  'types' => {
               'InputDataConfig' => {
                                      'type' => 'ArrayRef[SageMaker_Channel]',
                                      'class' => 'Paws::SageMaker::Channel'
                                    },
               'AlgorithmSpecification' => {
                                             'type' => 'SageMaker_HyperParameterAlgorithmSpecification',
                                             'class' => 'Paws::SageMaker::HyperParameterAlgorithmSpecification'
                                           },
               'ResourceConfig' => {
                                     'type' => 'SageMaker_ResourceConfig',
                                     'class' => 'Paws::SageMaker::ResourceConfig'
                                   },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'OutputDataConfig' => {
                                       'class' => 'Paws::SageMaker::OutputDataConfig',
                                       'type' => 'SageMaker_OutputDataConfig'
                                     },
               'EnableNetworkIsolation' => {
                                             'type' => 'Bool'
                                           },
               'VpcConfig' => {
                                'type' => 'SageMaker_VpcConfig',
                                'class' => 'Paws::SageMaker::VpcConfig'
                              },
               'CheckpointConfig' => {
                                       'class' => 'Paws::SageMaker::CheckpointConfig',
                                       'type' => 'SageMaker_CheckpointConfig'
                                     },
               'StoppingCondition' => {
                                        'type' => 'SageMaker_StoppingCondition',
                                        'class' => 'Paws::SageMaker::StoppingCondition'
                                      },
               'EnableInterContainerTrafficEncryption' => {
                                                            'type' => 'Bool'
                                                          },
               'EnableManagedSpotTraining' => {
                                                'type' => 'Bool'
                                              },
               'StaticHyperParameters' => {
                                            'type' => 'SageMaker_HyperParameters',
                                            'class' => 'Paws::SageMaker::HyperParameters'
                                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::HyperParameterTrainingJobDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::HyperParameterTrainingJobDefinition object:

  $service_obj->Method(Att1 => { AlgorithmSpecification => $value, ..., VpcConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::HyperParameterTrainingJobDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->AlgorithmSpecification

=head1 DESCRIPTION

Defines the training jobs launched by a hyperparameter tuning job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlgorithmSpecification => SageMaker_HyperParameterAlgorithmSpecification

  The HyperParameterAlgorithmSpecification object that specifies the
resource algorithm to use for the training jobs that the tuning job
launches.


=head2 CheckpointConfig => SageMaker_CheckpointConfig

  


=head2 EnableInterContainerTrafficEncryption => Bool

  To encrypt all communications between ML compute instances in
distributed training, choose C<True>. Encryption provides greater
security for distributed training, but training might take longer. How
long it takes depends on the amount of communication between compute
instances, especially if you use a deep learning algorithm in
distributed training.


=head2 EnableManagedSpotTraining => Bool

  A Boolean indicating whether managed spot training is enabled (C<True>)
or not (C<False>).


=head2 EnableNetworkIsolation => Bool

  Isolates the training container. No inbound or outbound network calls
can be made, except for calls between peers within a training cluster
for distributed training. If network isolation is used for training
jobs that are configured to use a VPC, Amazon SageMaker downloads and
uploads customer data and model artifacts through the specified VPC,
but the training container does not have network access.

The Semantic Segmentation built-in algorithm does not support network
isolation.


=head2 InputDataConfig => ArrayRef[SageMaker_Channel]

  An array of Channel objects that specify the input for the training
jobs that the tuning job launches.


=head2 B<REQUIRED> OutputDataConfig => SageMaker_OutputDataConfig

  Specifies the path to the Amazon S3 bucket where you store model
artifacts from the training jobs that the tuning job launches.


=head2 B<REQUIRED> ResourceConfig => SageMaker_ResourceConfig

  The resources, including the compute instances and storage volumes, to
use for the training jobs that the tuning job launches.

Storage volumes store model artifacts and incremental states. Training
algorithms might also use storage volumes for scratch space. If you
want Amazon SageMaker to use the storage volume to store the training
data, choose C<File> as the C<TrainingInputMode> in the algorithm
specification. For distributed training algorithms, specify an instance
count greater than 1.


=head2 B<REQUIRED> RoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role associated with the
training jobs that the tuning job launches.


=head2 StaticHyperParameters => SageMaker_HyperParameters

  Specifies the values of hyperparameters that do not change for the
tuning job.


=head2 B<REQUIRED> StoppingCondition => SageMaker_StoppingCondition

  Specifies a limit to how long a model hyperparameter training job can
run. It also specifies how long you are willing to wait for a managed
spot training job to complete. When the job reaches the a limit, Amazon
SageMaker ends the training job. Use this API to cap model training
costs.


=head2 VpcConfig => SageMaker_VpcConfig

  The VpcConfig object that specifies the VPC that you want the training
jobs that this hyperparameter tuning job launches to connect to.
Control access to and from your training container by configuring the
VPC. For more information, see Protect Training Jobs by Using an Amazon
Virtual Private Cloud
(https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


package Paws::SageMaker::HyperParameterTrainingJobDefinition;
  use Moose;
  has AlgorithmSpecification => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterAlgorithmSpecification', required => 1);
  has EnableInterContainerTrafficEncryption => (is => 'ro', isa => 'Bool');
  has EnableNetworkIsolation => (is => 'ro', isa => 'Bool');
  has InputDataConfig => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Channel]');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::SageMaker::OutputDataConfig', required => 1);
  has ResourceConfig => (is => 'ro', isa => 'Paws::SageMaker::ResourceConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has StaticHyperParameters => (is => 'ro', isa => 'Paws::SageMaker::HyperParameters');
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::StoppingCondition', required => 1);
  has VpcConfig => (is => 'ro', isa => 'Paws::SageMaker::VpcConfig');
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


=head2 B<REQUIRED> AlgorithmSpecification => L<Paws::SageMaker::HyperParameterAlgorithmSpecification>

  The HyperParameterAlgorithmSpecification object that specifies the
resource algorithm to use for the training jobs that the tuning job
launches.


=head2 EnableInterContainerTrafficEncryption => Bool

  To encrypt all communications between ML compute instances in
distributed training, specify C<True>. Encryption provides greater
security for distributed training, but training take longer because of
the additional communications between ML compute instances.


=head2 EnableNetworkIsolation => Bool

  Isolates the training container. No inbound or outbound network calls
can be made, except for calls between peers within a training cluster
for distributed training. If network isolation is used for training
jobs that are configured to use a VPC, Amazon SageMaker downloads and
uploads customer data and model artifacts through the specified VPC,
but the training container does not have network access.

The Semantic Segmentation built-in algorithm does not support network
isolation.


=head2 InputDataConfig => ArrayRef[L<Paws::SageMaker::Channel>]

  An array of Channel objects that specify the input for the training
jobs that the tuning job launches.


=head2 B<REQUIRED> OutputDataConfig => L<Paws::SageMaker::OutputDataConfig>

  Specifies the path to the Amazon S3 bucket where you store model
artifacts from the training jobs that the tuning job launches.


=head2 B<REQUIRED> ResourceConfig => L<Paws::SageMaker::ResourceConfig>

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


=head2 StaticHyperParameters => L<Paws::SageMaker::HyperParameters>

  Specifies the values of hyperparameters that do not change for the
tuning job.


=head2 B<REQUIRED> StoppingCondition => L<Paws::SageMaker::StoppingCondition>

  Sets a maximum duration for the training jobs that the tuning job
launches. Use this parameter to limit model training costs.

To stop a job, Amazon SageMaker sends the algorithm the C<SIGTERM>
signal. This delays job termination for 120 seconds. Algorithms might
use this 120-second window to save the model artifacts.

When Amazon SageMaker terminates a job because the stopping condition
has been met, training algorithms provided by Amazon SageMaker save the
intermediate results of the job.


=head2 VpcConfig => L<Paws::SageMaker::VpcConfig>

  The VpcConfig object that specifies the VPC that you want the training
jobs that this hyperparameter tuning job launches to connect to.
Control access to and from your training container by configuring the
VPC. For more information, see Protect Training Jobs by Using an Amazon
Virtual Private Cloud
(http://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


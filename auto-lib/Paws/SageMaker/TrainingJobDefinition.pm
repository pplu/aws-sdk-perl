package Paws::SageMaker::TrainingJobDefinition;
  use Moose;
  has HyperParameters => (is => 'ro', isa => 'Paws::SageMaker::HyperParameters');
  has InputDataConfig => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Channel]', required => 1);
  has OutputDataConfig => (is => 'ro', isa => 'Paws::SageMaker::OutputDataConfig', required => 1);
  has ResourceConfig => (is => 'ro', isa => 'Paws::SageMaker::ResourceConfig', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::StoppingCondition', required => 1);
  has TrainingInputMode => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TrainingJobDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TrainingJobDefinition object:

  $service_obj->Method(Att1 => { HyperParameters => $value, ..., TrainingInputMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TrainingJobDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->HyperParameters

=head1 DESCRIPTION

Defines the input needed to run a training job using the algorithm.

=head1 ATTRIBUTES


=head2 HyperParameters => L<Paws::SageMaker::HyperParameters>

  The hyperparameters used for the training job.


=head2 B<REQUIRED> InputDataConfig => ArrayRef[L<Paws::SageMaker::Channel>]

  An array of C<Channel> objects, each of which specifies an input
source.


=head2 B<REQUIRED> OutputDataConfig => L<Paws::SageMaker::OutputDataConfig>

  the path to the S3 bucket where you want to store model artifacts.
Amazon SageMaker creates subfolders for the artifacts.


=head2 B<REQUIRED> ResourceConfig => L<Paws::SageMaker::ResourceConfig>

  The resources, including the ML compute instances and ML storage
volumes, to use for model training.


=head2 B<REQUIRED> StoppingCondition => L<Paws::SageMaker::StoppingCondition>

  Sets a duration for training. Use this parameter to cap model training
costs.

To stop a job, Amazon SageMaker sends the algorithm the SIGTERM signal,
which delays job termination for 120 seconds. Algorithms might use this
120-second window to save the model artifacts.


=head2 B<REQUIRED> TrainingInputMode => Str

  The input mode used by the algorithm for the training job. For the
input modes that Amazon SageMaker algorithms support, see Algorithms
(http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html).

If an algorithm supports the C<File> input mode, Amazon SageMaker
downloads the training data from S3 to the provisioned ML storage
Volume, and mounts the directory to docker volume for training
container. If an algorithm supports the C<Pipe> input mode, Amazon
SageMaker streams data directly from S3 to the container.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


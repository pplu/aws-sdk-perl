package Paws::SageMaker::HyperParameterAlgorithmSpecification;
  use Moose;
  has AlgorithmName => (is => 'ro', isa => 'Str');
  has MetricDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::MetricDefinition]');
  has TrainingImage => (is => 'ro', isa => 'Str');
  has TrainingInputMode => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::HyperParameterAlgorithmSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::HyperParameterAlgorithmSpecification object:

  $service_obj->Method(Att1 => { AlgorithmName => $value, ..., TrainingInputMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::HyperParameterAlgorithmSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->AlgorithmName

=head1 DESCRIPTION

Specifies which training algorithm to use for training jobs that a
hyperparameter tuning job launches and the metrics to monitor.

=head1 ATTRIBUTES


=head2 AlgorithmName => Str

  The name of the resource algorithm to use for the hyperparameter tuning
job. If you specify a value for this parameter, do not specify a value
for C<TrainingImage>.


=head2 MetricDefinitions => ArrayRef[L<Paws::SageMaker::MetricDefinition>]

  An array of MetricDefinition objects that specify the metrics that the
algorithm emits.


=head2 TrainingImage => Str

  The registry path of the Docker image that contains the training
algorithm. For information about Docker registry paths for built-in
algorithms, see Algorithms Provided by Amazon SageMaker: Common
Parameters
(http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-algo-docker-registry-paths.html).


=head2 B<REQUIRED> TrainingInputMode => Str

  The input mode that the algorithm supports: File or Pipe. In File input
mode, Amazon SageMaker downloads the training data from Amazon S3 to
the storage volume that is attached to the training instance and mounts
the directory to the Docker volume for the training container. In Pipe
input mode, Amazon SageMaker streams data directly from Amazon S3 to
the container.

If you specify File mode, make sure that you provision the storage
volume that is attached to the training instance with enough capacity
to accommodate the training data downloaded from Amazon S3, the model
artifacts, and intermediate information.

For more information about input modes, see Algorithms
(http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


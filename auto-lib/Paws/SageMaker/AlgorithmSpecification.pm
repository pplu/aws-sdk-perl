package Paws::SageMaker::AlgorithmSpecification;
  use Moose;
  has AlgorithmName => (is => 'ro', isa => 'Str');
  has MetricDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::MetricDefinition]');
  has TrainingImage => (is => 'ro', isa => 'Str');
  has TrainingInputMode => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AlgorithmSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AlgorithmSpecification object:

  $service_obj->Method(Att1 => { AlgorithmName => $value, ..., TrainingInputMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AlgorithmSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->AlgorithmName

=head1 DESCRIPTION

Specifies the training algorithm to use in a CreateTrainingJob
(http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateTrainingJob.html)
request.

For more information about algorithms provided by Amazon SageMaker, see
Algorithms (http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html).
For information about using your own algorithms, see Using Your Own
Algorithms with Amazon SageMaker
(http://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html).

=head1 ATTRIBUTES


=head2 AlgorithmName => Str

  The name of the algorithm resource to use for the training job. This
must be an algorithm resource that you created or subscribe to on AWS
Marketplace. If you specify a value for this parameter, you can't
specify a value for C<TrainingImage>.


=head2 MetricDefinitions => ArrayRef[L<Paws::SageMaker::MetricDefinition>]

  A list of metric definition objects. Each object specifies the metric
name and regular expressions used to parse algorithm logs. Amazon
SageMaker publishes each metric to Amazon CloudWatch.


=head2 TrainingImage => Str

  The registry path of the Docker image that contains the training
algorithm. For information about docker registry paths for built-in
algorithms, see Algorithms Provided by Amazon SageMaker: Common
Parameters
(http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-algo-docker-registry-paths.html).


=head2 B<REQUIRED> TrainingInputMode => Str

  The input mode that the algorithm supports. For the input modes that
Amazon SageMaker algorithms support, see Algorithms
(http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html). If an
algorithm supports the C<File> input mode, Amazon SageMaker downloads
the training data from S3 to the provisioned ML storage Volume, and
mounts the directory to docker volume for training container. If an
algorithm supports the C<Pipe> input mode, Amazon SageMaker streams
data directly from S3 to the container.

In File mode, make sure you provision ML storage volume with sufficient
capacity to accommodate the data download from S3. In addition to the
training data, the ML storage volume also stores the output model. The
algorithm container use ML storage volume to also store intermediate
information, if any.

For distributed algorithms using File mode, training data is
distributed uniformly, and your training duration is predictable if the
input data objects size is approximately same. Amazon SageMaker does
not split the files any further for model training. If the object sizes
are skewed, training won't be optimal as the data distribution is also
skewed where one host in a training cluster is overloaded, thus
becoming bottleneck in training.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


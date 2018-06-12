
package Paws::SageMaker::CreateHyperParameterTuningJob;
  use Moose;
  has HyperParameterTuningJobConfig => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterTuningJobConfig', required => 1);
  has HyperParameterTuningJobName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has TrainingJobDefinition => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterTrainingJobDefinition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHyperParameterTuningJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateHyperParameterTuningJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateHyperParameterTuningJob - Arguments for method CreateHyperParameterTuningJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHyperParameterTuningJob on the 
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateHyperParameterTuningJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHyperParameterTuningJob.

As an example:

  $service_obj->CreateHyperParameterTuningJob(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker/CreateHyperParameterTuningJob>
=head1 ATTRIBUTES


=head2 B<REQUIRED> HyperParameterTuningJobConfig => L<Paws::SageMaker::HyperParameterTuningJobConfig>

The object that describes the tuning job, including the search
strategy, metric used to evaluate training jobs, ranges of parameters
to search, and resource limits for the tuning job.



=head2 B<REQUIRED> HyperParameterTuningJobName => Str

The name of the tuning job. This name is the prefix for the names of
all training jobs that this tuning job launches. The name must be
unique within the same AWS account and AWS Region. Names are not case
sensitive, and must be between 1-32 characters.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs. You can use tags to categorize your AWS
resources in different ways, for example, by purpose, owner, or
environment. For more information, see Using Cost Allocation Tags
(http://docs.aws.amazon.com//awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what)
in the I<AWS Billing and Cost Management User Guide>.



=head2 B<REQUIRED> TrainingJobDefinition => L<Paws::SageMaker::HyperParameterTrainingJobDefinition>

The object that describes the training jobs that this tuning job
launches, including static hyperparameters, input data configuration,
output data configuration, resource configuration, and stopping
condition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHyperParameterTuningJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


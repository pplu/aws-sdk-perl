# Generated from default/object.tt
package Paws::SageMaker::TrainingJobDefinition;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::SageMaker::Types qw/SageMaker_StoppingCondition SageMaker_ResourceConfig SageMaker_OutputDataConfig SageMaker_HyperParameters SageMaker_Channel/;
  has HyperParameters => (is => 'ro', isa => SageMaker_HyperParameters);
  has InputDataConfig => (is => 'ro', isa => ArrayRef[SageMaker_Channel], required => 1);
  has OutputDataConfig => (is => 'ro', isa => SageMaker_OutputDataConfig, required => 1);
  has ResourceConfig => (is => 'ro', isa => SageMaker_ResourceConfig, required => 1);
  has StoppingCondition => (is => 'ro', isa => SageMaker_StoppingCondition, required => 1);
  has TrainingInputMode => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InputDataConfig' => {
                                      'class' => 'Paws::SageMaker::Channel',
                                      'type' => 'ArrayRef[SageMaker_Channel]'
                                    },
               'TrainingInputMode' => {
                                        'type' => 'Str'
                                      },
               'ResourceConfig' => {
                                     'class' => 'Paws::SageMaker::ResourceConfig',
                                     'type' => 'SageMaker_ResourceConfig'
                                   },
               'OutputDataConfig' => {
                                       'class' => 'Paws::SageMaker::OutputDataConfig',
                                       'type' => 'SageMaker_OutputDataConfig'
                                     },
               'StoppingCondition' => {
                                        'class' => 'Paws::SageMaker::StoppingCondition',
                                        'type' => 'SageMaker_StoppingCondition'
                                      },
               'HyperParameters' => {
                                      'class' => 'Paws::SageMaker::HyperParameters',
                                      'type' => 'SageMaker_HyperParameters'
                                    }
             },
  'IsRequired' => {
                    'InputDataConfig' => 1,
                    'TrainingInputMode' => 1,
                    'ResourceConfig' => 1,
                    'OutputDataConfig' => 1,
                    'StoppingCondition' => 1
                  }
}
;
    return $Params_map;
  }


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


=head2 HyperParameters => SageMaker_HyperParameters

  The hyperparameters used for the training job.


=head2 B<REQUIRED> InputDataConfig => ArrayRef[SageMaker_Channel]

  An array of C<Channel> objects, each of which specifies an input
source.


=head2 B<REQUIRED> OutputDataConfig => SageMaker_OutputDataConfig

  the path to the S3 bucket where you want to store model artifacts.
Amazon SageMaker creates subfolders for the artifacts.


=head2 B<REQUIRED> ResourceConfig => SageMaker_ResourceConfig

  The resources, including the ML compute instances and ML storage
volumes, to use for model training.


=head2 B<REQUIRED> StoppingCondition => SageMaker_StoppingCondition

  Specifies a limit to how long a model training job can run. When the
job reaches the time limit, Amazon SageMaker ends the training job. Use
this API to cap model training costs.

To stop a job, Amazon SageMaker sends the algorithm the SIGTERM signal,
which delays job termination for 120 seconds. Algorithms can use this
120-second window to save the model artifacts.


=head2 B<REQUIRED> TrainingInputMode => Str

  The input mode used by the algorithm for the training job. For the
input modes that Amazon SageMaker algorithms support, see Algorithms
(https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html).

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


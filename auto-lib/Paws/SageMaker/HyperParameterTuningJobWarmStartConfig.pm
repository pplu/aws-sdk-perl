package Paws::SageMaker::HyperParameterTuningJobWarmStartConfig;
  use Moose;
  has ParentHyperParameterTuningJobs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ParentHyperParameterTuningJob]', required => 1);
  has WarmStartType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::HyperParameterTuningJobWarmStartConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::HyperParameterTuningJobWarmStartConfig object:

  $service_obj->Method(Att1 => { ParentHyperParameterTuningJobs => $value, ..., WarmStartType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::HyperParameterTuningJobWarmStartConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ParentHyperParameterTuningJobs

=head1 DESCRIPTION

Specifies the configuration for a hyperparameter tuning job that uses
one or more previous hyperparameter tuning jobs as a starting point.
The results of previous tuning jobs are used to inform which
combinations of hyperparameters to search over in the new tuning job.

All training jobs launched by the new hyperparameter tuning job are
evaluated by using the objective metric, and the training job that
performs the best is compared to the best training jobs from the parent
tuning jobs. From these, the training job that performs the best as
measured by the objective metric is returned as the overall best
training job.

All training jobs launched by parent hyperparameter tuning jobs and the
new hyperparameter tuning jobs count against the limit of training jobs
for the tuning job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ParentHyperParameterTuningJobs => ArrayRef[L<Paws::SageMaker::ParentHyperParameterTuningJob>]

  An array of hyperparameter tuning jobs that are used as the starting
point for the new hyperparameter tuning job. For more information about
warm starting a hyperparameter tuning job, see Using a Previous
Hyperparameter Tuning Job as a Starting Point
(http://docs.aws.amazon.com/automatic-model-tuning-incremental).

Hyperparameter tuning jobs created before October 1, 2018 cannot be
used as parent jobs for warm start tuning jobs.


=head2 B<REQUIRED> WarmStartType => Str

  Specifies one of the following:

=over

=item IDENTICAL_DATA_AND_ALGORITHM

The new hyperparameter tuning job uses the same input data and training
image as the parent tuning jobs. You can change the hyperparameter
ranges to search and the maximum number of training jobs that the
hyperparameter tuning job launches. You cannot use a new version of the
training algorithm, unless the changes in the new version do not affect
the algorithm itself. For example, changes that improve logging or
adding support for a different data format are allowed. You can also
change hyperparameters from tunable to static, and from static to
tunable, but the total number of static plus tunable hyperparameters
must remain the same as it is in all parent jobs. The objective metric
for the new tuning job must be the same as for all parent jobs.

=item TRANSFER_LEARNING

The new hyperparameter tuning job can include input data,
hyperparameter ranges, maximum number of concurrent training jobs, and
maximum number of training jobs that are different than those of its
parent hyperparameter tuning jobs. The training image can also be a
different version from the version used in the parent hyperparameter
tuning job. You can also change hyperparameters from tunable to static,
and from static to tunable, but the total number of static plus tunable
hyperparameters must remain the same as it is in all parent jobs. The
objective metric for the new tuning job must be the same as for all
parent jobs.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


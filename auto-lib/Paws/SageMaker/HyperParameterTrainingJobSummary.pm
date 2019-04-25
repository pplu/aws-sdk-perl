package Paws::SageMaker::HyperParameterTrainingJobSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has FailureReason => (is => 'ro', isa => 'Str');
  has FinalHyperParameterTuningJobObjectiveMetric => (is => 'ro', isa => 'Paws::SageMaker::FinalHyperParameterTuningJobObjectiveMetric');
  has ObjectiveStatus => (is => 'ro', isa => 'Str');
  has TrainingEndTime => (is => 'ro', isa => 'Str');
  has TrainingJobArn => (is => 'ro', isa => 'Str', required => 1);
  has TrainingJobName => (is => 'ro', isa => 'Str', required => 1);
  has TrainingJobStatus => (is => 'ro', isa => 'Str', required => 1);
  has TrainingStartTime => (is => 'ro', isa => 'Str');
  has TunedHyperParameters => (is => 'ro', isa => 'Paws::SageMaker::HyperParameters', required => 1);
  has TuningJobName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::HyperParameterTrainingJobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::HyperParameterTrainingJobSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., TuningJobName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::HyperParameterTrainingJobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Specifies summary information about a training job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

  The date and time that the training job was created.


=head2 FailureReason => Str

  The reason that the training job failed.


=head2 FinalHyperParameterTuningJobObjectiveMetric => L<Paws::SageMaker::FinalHyperParameterTuningJobObjectiveMetric>

  The FinalHyperParameterTuningJobObjectiveMetric object that specifies
the value of the objective metric of the tuning job that launched this
training job.


=head2 ObjectiveStatus => Str

  The status of the objective metric for the training job:

=over

=item *

Succeeded: The final objective metric for the training job was
evaluated by the hyperparameter tuning job and used in the
hyperparameter tuning process.

=back

=over

=item *

Pending: The training job is in progress and evaluation of its final
objective metric is pending.

=back

=over

=item *

Failed: The final objective metric for the training job was not
evaluated, and was not used in the hyperparameter tuning process. This
typically occurs when the training job failed or did not emit an
objective metric.

=back



=head2 TrainingEndTime => Str

  Specifies the time when the training job ends on training instances.
You are billed for the time interval between the value of
C<TrainingStartTime> and this time. For successful jobs and stopped
jobs, this is the time after model artifacts are uploaded. For failed
jobs, this is the time when Amazon SageMaker detects a job failure.


=head2 B<REQUIRED> TrainingJobArn => Str

  The Amazon Resource Name (ARN) of the training job.


=head2 B<REQUIRED> TrainingJobName => Str

  The name of the training job.


=head2 B<REQUIRED> TrainingJobStatus => Str

  The status of the training job.


=head2 TrainingStartTime => Str

  The date and time that the training job started.


=head2 B<REQUIRED> TunedHyperParameters => L<Paws::SageMaker::HyperParameters>

  A list of the hyperparameters for which you specified ranges to search.


=head2 TuningJobName => Str

  The HyperParameter tuning job that launched the training job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


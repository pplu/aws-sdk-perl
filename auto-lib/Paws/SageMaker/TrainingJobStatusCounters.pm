package Paws::SageMaker::TrainingJobStatusCounters;
  use Moose;
  has Completed => (is => 'ro', isa => 'Int');
  has InProgress => (is => 'ro', isa => 'Int');
  has NonRetryableError => (is => 'ro', isa => 'Int');
  has RetryableError => (is => 'ro', isa => 'Int');
  has Stopped => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TrainingJobStatusCounters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TrainingJobStatusCounters object:

  $service_obj->Method(Att1 => { Completed => $value, ..., Stopped => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TrainingJobStatusCounters object:

  $result = $service_obj->Method(...);
  $result->Att1->Completed

=head1 DESCRIPTION

The numbers of training jobs launched by a hyperparameter tuning job,
categorized by status.

=head1 ATTRIBUTES


=head2 Completed => Int

  The number of completed training jobs launched by the hyperparameter
tuning job.


=head2 InProgress => Int

  The number of in-progress training jobs launched by a hyperparameter
tuning job.


=head2 NonRetryableError => Int

  The number of training jobs that failed and can't be retried. A failed
training job can't be retried if it failed because a client error
occurred.


=head2 RetryableError => Int

  The number of training jobs that failed, but can be retried. A failed
training job can be retried only if it failed because an internal
service error occurred.


=head2 Stopped => Int

  The number of training jobs launched by a hyperparameter tuning job
that were manually stopped.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


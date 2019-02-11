package Paws::SageMaker::SecondaryStatusTransition;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::SecondaryStatusTransition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::SecondaryStatusTransition object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::SecondaryStatusTransition object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

An array element of
DescribeTrainingJobResponse$SecondaryStatusTransitions. It provides
additional details about a status that the training job has
transitioned through. A training job can be in one of several states,
for example, starting, downloading, training, or uploading. Within each
state, there are a number of intermediate states. For example, within
the starting state, Amazon SageMaker could be starting the training job
or launching the ML instances. These transitional states are referred
to as the job's secondary status.

=head1 ATTRIBUTES


=head2 EndTime => Str

  A timestamp that shows when the training job transitioned out of this
secondary status state into another secondary status state or when the
training job has ended.


=head2 B<REQUIRED> StartTime => Str

  A timestamp that shows when the training job transitioned to the
current secondary status state.


=head2 B<REQUIRED> Status => Str

  Contains a secondary status information from a training job.

Status might be one of the following secondary statuses:

=over

=item InProgress

=over

=item *

C<Starting> - Starting the training job.

=item *

C<Downloading> - An optional stage for algorithms that support C<File>
training input mode. It indicates that data is being downloaded to the
ML storage volumes.

=item *

C<Training> - Training is in progress.

=item *

C<Uploading> - Training is complete and the model artifacts are being
uploaded to the S3 location.

=back

=item Completed

=over

=item *

C<Completed> - The training job has completed.

=back

=item Failed

=over

=item *

C<Failed> - The training job has failed. The reason for the failure is
returned in the C<FailureReason> field of
C<DescribeTrainingJobResponse>.

=back

=item Stopped

=over

=item *

C<MaxRuntimeExceeded> - The job stopped because it exceeded the maximum
allowed runtime.

=item *

C<Stopped> - The training job has stopped.

=back

=item Stopping

=over

=item *

C<Stopping> - Stopping the training job.

=back

=back

We no longer support the following secondary statuses:

=over

=item *

C<LaunchingMLInstances>

=item *

C<PreparingTrainingStack>

=item *

C<DownloadingTrainingImage>

=back



=head2 StatusMessage => Str

  A detailed description of the progress within a secondary status.

Amazon SageMaker provides secondary statuses and status messages that
apply to each of them:

=over

=item Starting

=over

=item *

Starting the training job.

=item *

Launching requested ML instances.

=item *

Insufficient capacity error from EC2 while launching instances,
retrying!

=item *

Launched instance was unhealthy, replacing it!

=item *

Preparing the instances for training.

=back

=item Training

=over

=item *

Downloading the training image.

=item *

Training image download completed. Training in progress.

=back

=back

Status messages are subject to change. Therefore, we recommend not
including them in code that programmatically initiates actions. For
examples, don't use status messages in if statements.

To have an overview of your training job's progress, view
C<TrainingJobStatus> and C<SecondaryStatus> in
DescribeTrainingJobResponse, and C<StatusMessage> together. For
example, at the start of a training job, you might see the following:

=over

=item *

C<TrainingJobStatus> - InProgress

=item *

C<SecondaryStatus> - Training

=item *

C<StatusMessage> - Downloading the training image

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


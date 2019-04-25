package Paws::IoT::Job;
  use Moose;
  has AbortConfig => (is => 'ro', isa => 'Paws::IoT::AbortConfig', request_name => 'abortConfig', traits => ['NameInRequest']);
  has Comment => (is => 'ro', isa => 'Str', request_name => 'comment', traits => ['NameInRequest']);
  has CompletedAt => (is => 'ro', isa => 'Str', request_name => 'completedAt', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has ForceCanceled => (is => 'ro', isa => 'Bool', request_name => 'forceCanceled', traits => ['NameInRequest']);
  has JobArn => (is => 'ro', isa => 'Str', request_name => 'jobArn', traits => ['NameInRequest']);
  has JobExecutionsRolloutConfig => (is => 'ro', isa => 'Paws::IoT::JobExecutionsRolloutConfig', request_name => 'jobExecutionsRolloutConfig', traits => ['NameInRequest']);
  has JobId => (is => 'ro', isa => 'Str', request_name => 'jobId', traits => ['NameInRequest']);
  has JobProcessDetails => (is => 'ro', isa => 'Paws::IoT::JobProcessDetails', request_name => 'jobProcessDetails', traits => ['NameInRequest']);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedAt', traits => ['NameInRequest']);
  has PresignedUrlConfig => (is => 'ro', isa => 'Paws::IoT::PresignedUrlConfig', request_name => 'presignedUrlConfig', traits => ['NameInRequest']);
  has ReasonCode => (is => 'ro', isa => 'Str', request_name => 'reasonCode', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Targets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'targets', traits => ['NameInRequest']);
  has TargetSelection => (is => 'ro', isa => 'Str', request_name => 'targetSelection', traits => ['NameInRequest']);
  has TimeoutConfig => (is => 'ro', isa => 'Paws::IoT::TimeoutConfig', request_name => 'timeoutConfig', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::Job

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::Job object:

  $service_obj->Method(Att1 => { AbortConfig => $value, ..., TimeoutConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::Job object:

  $result = $service_obj->Method(...);
  $result->Att1->AbortConfig

=head1 DESCRIPTION

The C<Job> object contains details about a job.

=head1 ATTRIBUTES


=head2 AbortConfig => L<Paws::IoT::AbortConfig>

  Configuration for criteria to abort the job.


=head2 Comment => Str

  If the job was updated, describes the reason for the update.


=head2 CompletedAt => Str

  The time, in milliseconds since the epoch, when the job was completed.


=head2 CreatedAt => Str

  The time, in milliseconds since the epoch, when the job was created.


=head2 Description => Str

  A short text description of the job.


=head2 ForceCanceled => Bool

  Will be C<true> if the job was canceled with the optional C<force>
parameter set to C<true>.


=head2 JobArn => Str

  An ARN identifying the job with format
"arn:aws:iot:region:account:job/jobId".


=head2 JobExecutionsRolloutConfig => L<Paws::IoT::JobExecutionsRolloutConfig>

  Allows you to create a staged rollout of a job.


=head2 JobId => Str

  The unique identifier you assigned to this job when it was created.


=head2 JobProcessDetails => L<Paws::IoT::JobProcessDetails>

  Details about the job process.


=head2 LastUpdatedAt => Str

  The time, in milliseconds since the epoch, when the job was last
updated.


=head2 PresignedUrlConfig => L<Paws::IoT::PresignedUrlConfig>

  Configuration for pre-signed S3 URLs.


=head2 ReasonCode => Str

  If the job was updated, provides the reason code for the update.


=head2 Status => Str

  The status of the job, one of C<IN_PROGRESS>, C<CANCELED>,
C<DELETION_IN_PROGRESS> or C<COMPLETED>.


=head2 Targets => ArrayRef[Str|Undef]

  A list of IoT things and thing groups to which the job should be sent.


=head2 TargetSelection => Str

  Specifies whether the job will continue to run (CONTINUOUS), or will be
complete after all those things specified as targets have completed the
job (SNAPSHOT). If continuous, the job may also be run on a thing when
a change is detected in a target. For example, a job will run on a
device when the thing representing the device is added to a target
group, even after the job was completed by all things originally in the
group.


=head2 TimeoutConfig => L<Paws::IoT::TimeoutConfig>

  Specifies the amount of time each device has to finish its execution of
the job. A timer is started when the job execution status is set to
C<IN_PROGRESS>. If the job execution status is not set to another
terminal state before the timer expires, it will be automatically set
to C<TIMED_OUT>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


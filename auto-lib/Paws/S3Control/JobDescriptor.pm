package Paws::S3Control::JobDescriptor;
  use Moose;
  has ConfirmationRequired => (is => 'ro', isa => 'Bool');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FailureReasons => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::JobFailure]');
  has JobArn => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str');
  has Manifest => (is => 'ro', isa => 'Paws::S3Control::JobManifest');
  has Operation => (is => 'ro', isa => 'Paws::S3Control::JobOperation');
  has Priority => (is => 'ro', isa => 'Int');
  has ProgressSummary => (is => 'ro', isa => 'Paws::S3Control::JobProgressSummary');
  has Report => (is => 'ro', isa => 'Paws::S3Control::JobReport');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusUpdateReason => (is => 'ro', isa => 'Str');
  has SuspendedCause => (is => 'ro', isa => 'Str');
  has SuspendedDate => (is => 'ro', isa => 'Str');
  has TerminationDate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::JobDescriptor

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::JobDescriptor object:

  $service_obj->Method(Att1 => { ConfirmationRequired => $value, ..., TerminationDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::JobDescriptor object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfirmationRequired

=head1 DESCRIPTION

A container element for the job configuration and status information
returned by a C<Describe Job> request.

=head1 ATTRIBUTES


=head2 ConfirmationRequired => Bool

  Indicates whether confirmation is required before Amazon S3 begins
running the specified job. Confirmation is required only for jobs
created through the Amazon S3 console.


=head2 CreationTime => Str

  A timestamp indicating when this job was created.


=head2 Description => Str

  The description for this job, if one was provided in this job's
C<Create Job> request.


=head2 FailureReasons => ArrayRef[L<Paws::S3Control::JobFailure>]

  If the specified job failed, this field contains information describing
the failure.


=head2 JobArn => Str

  The Amazon Resource Name (ARN) for this job.


=head2 JobId => Str

  The ID for the specified job.


=head2 Manifest => L<Paws::S3Control::JobManifest>

  The configuration information for the specified job's manifest object.


=head2 Operation => L<Paws::S3Control::JobOperation>

  The operation that the specified job is configured to execute on the
objects listed in the manifest.


=head2 Priority => Int

  The priority of the specified job.


=head2 ProgressSummary => L<Paws::S3Control::JobProgressSummary>

  Describes the total number of tasks that the specified job has
executed, the number of tasks that succeeded, and the number of tasks
that failed.


=head2 Report => L<Paws::S3Control::JobReport>

  Contains the configuration information for the job-completion report if
you requested one in the C<Create Job> request.


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) for the Identity and Access Management
(IAM) Role assigned to execute the tasks for this job.


=head2 Status => Str

  The current status of the specified job.


=head2 StatusUpdateReason => Str

  


=head2 SuspendedCause => Str

  The reason why the specified job was suspended. A job is only suspended
if you create it through the Amazon S3 console. When you create the
job, it enters the C<Suspended> state to await confirmation before
running. After you confirm the job, it automatically exits the
C<Suspended> state.


=head2 SuspendedDate => Str

  The timestamp when this job was suspended, if it has been suspended.


=head2 TerminationDate => Str

  A timestamp indicating when this job terminated. A job's termination
date is the date and time when it succeeded, failed, or was canceled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


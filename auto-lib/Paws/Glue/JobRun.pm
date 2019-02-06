package Paws::Glue::JobRun;
  use Moose;
  has AllocatedCapacity => (is => 'ro', isa => 'Int');
  has Arguments => (is => 'ro', isa => 'Paws::Glue::GenericMap');
  has Attempt => (is => 'ro', isa => 'Int');
  has CompletedOn => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has ExecutionTime => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str');
  has JobName => (is => 'ro', isa => 'Str');
  has JobRunState => (is => 'ro', isa => 'Str');
  has LastModifiedOn => (is => 'ro', isa => 'Str');
  has LogGroupName => (is => 'ro', isa => 'Str');
  has MaxCapacity => (is => 'ro', isa => 'Num');
  has NotificationProperty => (is => 'ro', isa => 'Paws::Glue::NotificationProperty');
  has PredecessorRuns => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Predecessor]');
  has PreviousRunId => (is => 'ro', isa => 'Str');
  has SecurityConfiguration => (is => 'ro', isa => 'Str');
  has StartedOn => (is => 'ro', isa => 'Str');
  has Timeout => (is => 'ro', isa => 'Int');
  has TriggerName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::JobRun

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::JobRun object:

  $service_obj->Method(Att1 => { AllocatedCapacity => $value, ..., TriggerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::JobRun object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocatedCapacity

=head1 DESCRIPTION

Contains information about a job run.

=head1 ATTRIBUTES


=head2 AllocatedCapacity => Int

  This field is deprecated, use C<MaxCapacity> instead.

The number of AWS Glue data processing units (DPUs) allocated to this
JobRun. From 2 to 100 DPUs can be allocated; the default is 10. A DPU
is a relative measure of processing power that consists of 4 vCPUs of
compute capacity and 16 GB of memory. For more information, see the AWS
Glue pricing page (https://aws.amazon.com/glue/pricing/).


=head2 Arguments => L<Paws::Glue::GenericMap>

  The job arguments associated with this run. These override equivalent
default arguments set for the job.

You can specify arguments here that your own job-execution script
consumes, as well as arguments that AWS Glue itself consumes.

For information about how to specify and consume your own job
arguments, see the Calling AWS Glue APIs in Python
(http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html)
topic in the developer guide.

For information about the key-value pairs that AWS Glue consumes to set
up your job, see the Special Parameters Used by AWS Glue
(http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html)
topic in the developer guide.


=head2 Attempt => Int

  The number of the attempt to run this job.


=head2 CompletedOn => Str

  The date and time this job run completed.


=head2 ErrorMessage => Str

  An error message associated with this job run.


=head2 ExecutionTime => Int

  The amount of time (in seconds) that the job run consumed resources.


=head2 Id => Str

  The ID of this job run.


=head2 JobName => Str

  The name of the job definition being used in this run.


=head2 JobRunState => Str

  The current state of the job run.


=head2 LastModifiedOn => Str

  The last time this job run was modified.


=head2 LogGroupName => Str

  The name of the log group for secure logging, that can be server-side
encrypted in CloudWatch using KMS. This name can be C</aws-glue/jobs/>,
in which case the default encryption is C<NONE>. If you add a role name
and SecurityConfiguration name (in other words,
C</aws-glue/jobs-yourRoleName-yourSecurityConfigurationName/>), then
that security configuration will be used to encrypt the log group.


=head2 MaxCapacity => Num

  AWS Glue supports running jobs on a C<JobCommand.Name>="pythonshell"
with allocated processing as low as 0.0625 DPU, which can be specified
using C<MaxCapacity>. Glue ETL jobs running in any other way cannot
have fractional DPU allocations.


=head2 NotificationProperty => L<Paws::Glue::NotificationProperty>

  Specifies configuration properties of a job run notification.


=head2 PredecessorRuns => ArrayRef[L<Paws::Glue::Predecessor>]

  A list of predecessors to this job run.


=head2 PreviousRunId => Str

  The ID of the previous run of this job. For example, the JobRunId
specified in the StartJobRun action.


=head2 SecurityConfiguration => Str

  The name of the SecurityConfiguration structure to be used with this
job run.


=head2 StartedOn => Str

  The date and time at which this job run was started.


=head2 Timeout => Int

  The JobRun timeout in minutes. This is the maximum time that a job run
can consume resources before it is terminated and enters C<TIMEOUT>
status. The default is 2,880 minutes (48 hours). This overrides the
timeout value set in the parent job.


=head2 TriggerName => Str

  The name of the trigger that started this job run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


package Paws::Glue::JobUpdate;
  use Moose;
  has AllocatedCapacity => (is => 'ro', isa => 'Int');
  has Command => (is => 'ro', isa => 'Paws::Glue::JobCommand');
  has Connections => (is => 'ro', isa => 'Paws::Glue::ConnectionsList');
  has DefaultArguments => (is => 'ro', isa => 'Paws::Glue::GenericMap');
  has Description => (is => 'ro', isa => 'Str');
  has ExecutionProperty => (is => 'ro', isa => 'Paws::Glue::ExecutionProperty');
  has GlueVersion => (is => 'ro', isa => 'Str');
  has LogUri => (is => 'ro', isa => 'Str');
  has MaxCapacity => (is => 'ro', isa => 'Num');
  has MaxRetries => (is => 'ro', isa => 'Int');
  has NotificationProperty => (is => 'ro', isa => 'Paws::Glue::NotificationProperty');
  has NumberOfWorkers => (is => 'ro', isa => 'Int');
  has Role => (is => 'ro', isa => 'Str');
  has SecurityConfiguration => (is => 'ro', isa => 'Str');
  has Timeout => (is => 'ro', isa => 'Int');
<<<<<<< HEAD
  has WorkerType => (is => 'ro', isa => 'Str');
=======

>>>>>>> 186ed52fd2853f25b0e1410d04060db03e2f042c
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::JobUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::JobUpdate object:

  $service_obj->Method(Att1 => { AllocatedCapacity => $value, ..., WorkerType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::JobUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocatedCapacity

=head1 DESCRIPTION

Specifies information used to update an existing job definition. The
previous job definition is completely overwritten by this information.

=head1 ATTRIBUTES


=head2 AllocatedCapacity => Int

  This field is deprecated. Use C<MaxCapacity> instead.

The number of AWS Glue data processing units (DPUs) to allocate to this
job. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a
relative measure of processing power that consists of 4 vCPUs of
compute capacity and 16 GB of memory. For more information, see the AWS
Glue pricing page (https://aws.amazon.com/glue/pricing/).


=head2 Command => L<Paws::Glue::JobCommand>

  The C<JobCommand> that executes this job (required).


=head2 Connections => L<Paws::Glue::ConnectionsList>

  The connections used for this job.


=head2 DefaultArguments => L<Paws::Glue::GenericMap>

  The default arguments for this job.

You can specify arguments here that your own job-execution script
consumes, as well as arguments that AWS Glue itself consumes.

For information about how to specify and consume your own Job
arguments, see the Calling AWS Glue APIs in Python
(https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html)
topic in the developer guide.

For information about the key-value pairs that AWS Glue consumes to set
up your job, see the Special Parameters Used by AWS Glue
(https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html)
topic in the developer guide.


=head2 Description => Str

  Description of the job being defined.


=head2 ExecutionProperty => L<Paws::Glue::ExecutionProperty>

  An C<ExecutionProperty> specifying the maximum number of concurrent
runs allowed for this job.


=head2 GlueVersion => Str

  Glue version determines the versions of Apache Spark and Python that
AWS Glue supports. The Python version indicates the version supported
for jobs of type Spark.

For more information about the available AWS Glue versions and
corresponding Spark and Python versions, see Glue version
(https://docs.aws.amazon.com/glue/latest/dg/add-job.html) in the
developer guide.


=head2 LogUri => Str

  This field is reserved for future use.


=head2 MaxCapacity => Num

  The number of AWS Glue data processing units (DPUs) that can be
allocated when this job runs. A DPU is a relative measure of processing
power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
For more information, see the AWS Glue pricing page
(https://aws.amazon.com/glue/pricing/).

Do not set C<Max Capacity> if using C<WorkerType> and
C<NumberOfWorkers>.

The value that can be allocated for C<MaxCapacity> depends on whether
you are running a Python shell job or an Apache Spark ETL job:

=over

=item *

When you specify a Python shell job (C<JobCommand.Name>="pythonshell"),
you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.

=item *

When you specify an Apache Spark ETL job
(C<JobCommand.Name>="glueetl"), you can allocate from 2 to 100 DPUs.
The default is 10 DPUs. This job type cannot have a fractional DPU
allocation.

=back



=head2 MaxRetries => Int

  The maximum number of times to retry this job if it fails.


=head2 NotificationProperty => L<Paws::Glue::NotificationProperty>

  Specifies the configuration properties of a job notification.


=head2 NumberOfWorkers => Int

  The number of workers of a defined C<workerType> that are allocated
when a job runs.

The maximum number of workers you can define are 299 for C<G.1X>, and
149 for C<G.2X>.


=head2 Role => Str

  The name or Amazon Resource Name (ARN) of the IAM role associated with
this job (required).


=head2 SecurityConfiguration => Str

  The name of the C<SecurityConfiguration> structure to be used with this
job.


=head2 Timeout => Int

  The job timeout in minutes. This is the maximum time that a job run can
consume resources before it is terminated and enters C<TIMEOUT> status.
The default is 2,880 minutes (48 hours).


=head2 WorkerType => Str

  The type of predefined worker that is allocated when a job runs.
Accepts a value of Standard, G.1X, or G.2X.

=over

=item *

For the C<Standard> worker type, each worker provides 4 vCPU, 16 GB of
memory and a 50GB disk, and 2 executors per worker.

=item *

For the C<G.1X> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB
of memory, 64 GB disk), and provides 1 executor per worker. We
recommend this worker type for memory-intensive jobs.

=item *

For the C<G.2X> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB
of memory, 128 GB disk), and provides 1 executor per worker. We
recommend this worker type for memory-intensive jobs.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


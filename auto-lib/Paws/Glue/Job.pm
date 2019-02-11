package Paws::Glue::Job;
  use Moose;
  has AllocatedCapacity => (is => 'ro', isa => 'Int');
  has Command => (is => 'ro', isa => 'Paws::Glue::JobCommand');
  has Connections => (is => 'ro', isa => 'Paws::Glue::ConnectionsList');
  has CreatedOn => (is => 'ro', isa => 'Str');
  has DefaultArguments => (is => 'ro', isa => 'Paws::Glue::GenericMap');
  has Description => (is => 'ro', isa => 'Str');
  has ExecutionProperty => (is => 'ro', isa => 'Paws::Glue::ExecutionProperty');
  has LastModifiedOn => (is => 'ro', isa => 'Str');
  has LogUri => (is => 'ro', isa => 'Str');
  has MaxCapacity => (is => 'ro', isa => 'Num');
  has MaxRetries => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has NotificationProperty => (is => 'ro', isa => 'Paws::Glue::NotificationProperty');
  has Role => (is => 'ro', isa => 'Str');
  has SecurityConfiguration => (is => 'ro', isa => 'Str');
  has Timeout => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Job

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Job object:

  $service_obj->Method(Att1 => { AllocatedCapacity => $value, ..., Timeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Job object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocatedCapacity

=head1 DESCRIPTION

Specifies a job definition.

=head1 ATTRIBUTES


=head2 AllocatedCapacity => Int

  This field is deprecated, use C<MaxCapacity> instead.

The number of AWS Glue data processing units (DPUs) allocated to runs
of this job. From 2 to 100 DPUs can be allocated; the default is 10. A
DPU is a relative measure of processing power that consists of 4 vCPUs
of compute capacity and 16 GB of memory. For more information, see the
AWS Glue pricing page (https://aws.amazon.com/glue/pricing/).


=head2 Command => L<Paws::Glue::JobCommand>

  The JobCommand that executes this job.


=head2 Connections => L<Paws::Glue::ConnectionsList>

  The connections used for this job.


=head2 CreatedOn => Str

  The time and date that this job definition was created.


=head2 DefaultArguments => L<Paws::Glue::GenericMap>

  The default arguments for this job, specified as name-value pairs.

You can specify arguments here that your own job-execution script
consumes, as well as arguments that AWS Glue itself consumes.

For information about how to specify and consume your own Job
arguments, see the Calling AWS Glue APIs in Python
(http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html)
topic in the developer guide.

For information about the key-value pairs that AWS Glue consumes to set
up your job, see the Special Parameters Used by AWS Glue
(http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html)
topic in the developer guide.


=head2 Description => Str

  Description of the job being defined.


=head2 ExecutionProperty => L<Paws::Glue::ExecutionProperty>

  An ExecutionProperty specifying the maximum number of concurrent runs
allowed for this job.


=head2 LastModifiedOn => Str

  The last point in time when this job definition was modified.


=head2 LogUri => Str

  This field is reserved for future use.


=head2 MaxCapacity => Num

  AWS Glue supports running jobs on a C<JobCommand.Name>="pythonshell"
with allocated processing as low as 0.0625 DPU, which can be specified
using C<MaxCapacity>. Glue ETL jobs running in any other way cannot
have fractional DPU allocations.


=head2 MaxRetries => Int

  The maximum number of times to retry this job after a JobRun fails.


=head2 Name => Str

  The name you assign to this job definition.


=head2 NotificationProperty => L<Paws::Glue::NotificationProperty>

  Specifies configuration properties of a job notification.


=head2 Role => Str

  The name or ARN of the IAM role associated with this job.


=head2 SecurityConfiguration => Str

  The name of the SecurityConfiguration structure to be used with this
job.


=head2 Timeout => Int

  The job timeout in minutes. This is the maximum time that a job run can
consume resources before it is terminated and enters C<TIMEOUT> status.
The default is 2,880 minutes (48 hours).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


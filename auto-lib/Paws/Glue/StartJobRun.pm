
package Paws::Glue::StartJobRun;
  use Moose;
  has AllocatedCapacity => (is => 'ro', isa => 'Int');
  has Arguments => (is => 'ro', isa => 'Paws::Glue::GenericMap');
  has JobName => (is => 'ro', isa => 'Str', required => 1);
  has JobRunId => (is => 'ro', isa => 'Str');
  has MaxCapacity => (is => 'ro', isa => 'Num');
  has NotificationProperty => (is => 'ro', isa => 'Paws::Glue::NotificationProperty');
  has SecurityConfiguration => (is => 'ro', isa => 'Str');
  has Timeout => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartJobRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::StartJobRunResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StartJobRun - Arguments for method StartJobRun on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartJobRun on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method StartJobRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartJobRun.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $StartJobRunResponse = $glue->StartJobRun(
      JobName           => 'MyNameString',
      AllocatedCapacity => 1,                # OPTIONAL
      Arguments   => { 'MyGenericString' => 'MyGenericString', },    # OPTIONAL
      JobRunId    => 'MyIdString',                                   # OPTIONAL
      MaxCapacity => 1,                                              # OPTIONAL
      NotificationProperty => {
        NotifyDelayAfter => 1,    # min: 1; OPTIONAL
      },    # OPTIONAL
      SecurityConfiguration => 'MyNameString',    # OPTIONAL
      Timeout               => 1,                 # OPTIONAL
    );

    # Results:
    my $JobRunId = $StartJobRunResponse->JobRunId;

    # Returns a L<Paws::Glue::StartJobRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/StartJobRun>

=head1 ATTRIBUTES


=head2 AllocatedCapacity => Int

This field is deprecated, use C<MaxCapacity> instead.

The number of AWS Glue data processing units (DPUs) to allocate to this
JobRun. From 2 to 100 DPUs can be allocated; the default is 10. A DPU
is a relative measure of processing power that consists of 4 vCPUs of
compute capacity and 16 GB of memory. For more information, see the AWS
Glue pricing page (https://aws.amazon.com/glue/pricing/).



=head2 Arguments => L<Paws::Glue::GenericMap>

The job arguments specifically for this run. They override the
equivalent default arguments set for in the job definition itself.

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



=head2 B<REQUIRED> JobName => Str

The name of the job definition to use.



=head2 JobRunId => Str

The ID of a previous JobRun to retry.



=head2 MaxCapacity => Num

AWS Glue supports running jobs on a C<JobCommand.Name>="pythonshell"
with allocated processing as low as 0.0625 DPU, which can be specified
using C<MaxCapacity>. Glue ETL jobs running in any other way cannot
have fractional DPU allocations.



=head2 NotificationProperty => L<Paws::Glue::NotificationProperty>

Specifies configuration properties of a job run notification.



=head2 SecurityConfiguration => Str

The name of the SecurityConfiguration structure to be used with this
job run.



=head2 Timeout => Int

The JobRun timeout in minutes. This is the maximum time that a job run
can consume resources before it is terminated and enters C<TIMEOUT>
status. The default is 2,880 minutes (48 hours). This overrides the
timeout value set in the parent job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartJobRun in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


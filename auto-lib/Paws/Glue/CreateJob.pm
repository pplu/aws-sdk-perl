# Generated from json/callargs_class.tt

package Paws::Glue::CreateJob;
  use Moo;
  use Types::Standard qw/Str Int Num/;
  use Paws::Glue::Types qw/Glue_ConnectionsList Glue_TagsMap Glue_ExecutionProperty Glue_JobCommand Glue_NotificationProperty Glue_GenericMap/;
  has AllocatedCapacity => (is => 'ro', isa => Int, predicate => 1);
  has Command => (is => 'ro', isa => Glue_JobCommand, required => 1, predicate => 1);
  has Connections => (is => 'ro', isa => Glue_ConnectionsList, predicate => 1);
  has DefaultArguments => (is => 'ro', isa => Glue_GenericMap, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has ExecutionProperty => (is => 'ro', isa => Glue_ExecutionProperty, predicate => 1);
  has LogUri => (is => 'ro', isa => Str, predicate => 1);
  has MaxCapacity => (is => 'ro', isa => Num, predicate => 1);
  has MaxRetries => (is => 'ro', isa => Int, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NotificationProperty => (is => 'ro', isa => Glue_NotificationProperty, predicate => 1);
  has NumberOfWorkers => (is => 'ro', isa => Int, predicate => 1);
  has Role => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SecurityConfiguration => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => Glue_TagsMap, predicate => 1);
  has Timeout => (is => 'ro', isa => Int, predicate => 1);
  has WorkerType => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateJob');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::CreateJobResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WorkerType' => {
                                 'type' => 'Str'
                               },
               'NumberOfWorkers' => {
                                      'type' => 'Int'
                                    },
               'ExecutionProperty' => {
                                        'class' => 'Paws::Glue::ExecutionProperty',
                                        'type' => 'Glue_ExecutionProperty'
                                      },
               'NotificationProperty' => {
                                           'class' => 'Paws::Glue::NotificationProperty',
                                           'type' => 'Glue_NotificationProperty'
                                         },
               'SecurityConfiguration' => {
                                            'type' => 'Str'
                                          },
               'LogUri' => {
                             'type' => 'Str'
                           },
               'MaxCapacity' => {
                                  'type' => 'Num'
                                },
               'Connections' => {
                                  'class' => 'Paws::Glue::ConnectionsList',
                                  'type' => 'Glue_ConnectionsList'
                                },
               'Role' => {
                           'type' => 'Str'
                         },
               'DefaultArguments' => {
                                       'class' => 'Paws::Glue::GenericMap',
                                       'type' => 'Glue_GenericMap'
                                     },
               'MaxRetries' => {
                                 'type' => 'Int'
                               },
               'Command' => {
                              'class' => 'Paws::Glue::JobCommand',
                              'type' => 'Glue_JobCommand'
                            },
               'AllocatedCapacity' => {
                                        'type' => 'Int'
                                      },
               'Tags' => {
                           'class' => 'Paws::Glue::TagsMap',
                           'type' => 'Glue_TagsMap'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'Timeout' => {
                              'type' => 'Int'
                            }
             },
  'IsRequired' => {
                    'Command' => 1,
                    'Role' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateJob - Arguments for method CreateJob on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJob on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJob.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateJobResponse = $glue->CreateJob(
      Command => {
        Name           => 'MyGenericString',           # OPTIONAL
        PythonVersion  => 'MyPythonVersionString',     # OPTIONAL
        ScriptLocation => 'MyScriptLocationString',    # OPTIONAL
      },
      Name              => 'MyNameString',
      Role              => 'MyRoleString',
      AllocatedCapacity => 1,                          # OPTIONAL
      Connections       => {
        Connections => [
          'MyGenericString', ...                       # OPTIONAL
        ],                                             # OPTIONAL
      },    # OPTIONAL
      DefaultArguments => {
        'MyGenericString' => 'MyGenericString', # key: OPTIONAL, value: OPTIONAL
      },    # OPTIONAL
      Description       => 'MyDescriptionString',    # OPTIONAL
      ExecutionProperty => {
        MaxConcurrentRuns => 1,                      # OPTIONAL
      },    # OPTIONAL
      LogUri               => 'MyUriString',    # OPTIONAL
      MaxCapacity          => 1,                # OPTIONAL
      MaxRetries           => 1,                # OPTIONAL
      NotificationProperty => {
        NotifyDelayAfter => 1,                  # min: 1; OPTIONAL
      },    # OPTIONAL
      NumberOfWorkers       => 1,                 # OPTIONAL
      SecurityConfiguration => 'MyNameString',    # OPTIONAL
      Tags                  => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Timeout    => 1,                 # OPTIONAL
      WorkerType => 'MyNameString',    # OPTIONAL
    );

    # Results:
    my $Name = $CreateJobResponse->Name;

    # Returns a L<Paws::Glue::CreateJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateJob>

=head1 ATTRIBUTES


=head2 AllocatedCapacity => Int

This parameter is deprecated. Use C<MaxCapacity> instead.

The number of AWS Glue data processing units (DPUs) to allocate to this
Job. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a
relative measure of processing power that consists of 4 vCPUs of
compute capacity and 16 GB of memory. For more information, see the AWS
Glue pricing page (https://aws.amazon.com/glue/pricing/).



=head2 B<REQUIRED> Command => Glue_JobCommand

The C<JobCommand> that executes this job.



=head2 Connections => Glue_ConnectionsList

The connections used for this job.



=head2 DefaultArguments => Glue_GenericMap

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



=head2 ExecutionProperty => Glue_ExecutionProperty

An C<ExecutionProperty> specifying the maximum number of concurrent
runs allowed for this job.



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



=head2 B<REQUIRED> Name => Str

The name you assign to this job definition. It must be unique in your
account.



=head2 NotificationProperty => Glue_NotificationProperty

Specifies configuration properties of a job notification.



=head2 NumberOfWorkers => Int

The number of workers of a defined C<workerType> that are allocated
when a job runs.

The maximum number of workers you can define are 299 for C<G.1X>, and
149 for C<G.2X>.



=head2 B<REQUIRED> Role => Str

The name or Amazon Resource Name (ARN) of the IAM role associated with
this job.



=head2 SecurityConfiguration => Str

The name of the C<SecurityConfiguration> structure to be used with this
job.



=head2 Tags => Glue_TagsMap

The tags to use with this job. You may use tags to limit access to the
job. For more information about tags in AWS Glue, see AWS Tags in AWS
Glue (https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html) in
the developer guide.



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

This class forms part of L<Paws>, documenting arguments for method CreateJob in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


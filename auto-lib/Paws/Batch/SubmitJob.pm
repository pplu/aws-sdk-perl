
package Paws::Batch::SubmitJob;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Batch::Types qw/Batch_ContainerOverrides Batch_JobDependency Batch_JobTimeout Batch_ArrayProperties Batch_ParametersMap Batch_NodeOverrides Batch_RetryStrategy/;
  has ArrayProperties => (is => 'ro', isa => Batch_ArrayProperties, predicate => 1);
  has ContainerOverrides => (is => 'ro', isa => Batch_ContainerOverrides, predicate => 1);
  has DependsOn => (is => 'ro', isa => ArrayRef[Batch_JobDependency], predicate => 1);
  has JobDefinition => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has JobName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has JobQueue => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NodeOverrides => (is => 'ro', isa => Batch_NodeOverrides, predicate => 1);
  has Parameters => (is => 'ro', isa => Batch_ParametersMap, predicate => 1);
  has RetryStrategy => (is => 'ro', isa => Batch_RetryStrategy, predicate => 1);
  has Timeout => (is => 'ro', isa => Batch_JobTimeout, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SubmitJob');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/submitjob');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Batch::SubmitJobResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NodeOverrides' => {
                                    'class' => 'Paws::Batch::NodeOverrides',
                                    'type' => 'Batch_NodeOverrides'
                                  },
               'JobQueue' => {
                               'type' => 'Str'
                             },
               'Timeout' => {
                              'class' => 'Paws::Batch::JobTimeout',
                              'type' => 'Batch_JobTimeout'
                            },
               'Parameters' => {
                                 'class' => 'Paws::Batch::ParametersMap',
                                 'type' => 'Batch_ParametersMap'
                               },
               'RetryStrategy' => {
                                    'class' => 'Paws::Batch::RetryStrategy',
                                    'type' => 'Batch_RetryStrategy'
                                  },
               'JobDefinition' => {
                                    'type' => 'Str'
                                  },
               'ContainerOverrides' => {
                                         'class' => 'Paws::Batch::ContainerOverrides',
                                         'type' => 'Batch_ContainerOverrides'
                                       },
               'ArrayProperties' => {
                                      'type' => 'Batch_ArrayProperties',
                                      'class' => 'Paws::Batch::ArrayProperties'
                                    },
               'JobName' => {
                              'type' => 'Str'
                            },
               'DependsOn' => {
                                'class' => 'Paws::Batch::JobDependency',
                                'type' => 'ArrayRef[Batch_JobDependency]'
                              }
             },
  'IsRequired' => {
                    'JobName' => 1,
                    'JobDefinition' => 1,
                    'JobQueue' => 1
                  },
  'NameInRequest' => {
                       'JobName' => 'jobName',
                       'DependsOn' => 'dependsOn',
                       'ContainerOverrides' => 'containerOverrides',
                       'ArrayProperties' => 'arrayProperties',
                       'JobDefinition' => 'jobDefinition',
                       'RetryStrategy' => 'retryStrategy',
                       'Parameters' => 'parameters',
                       'Timeout' => 'timeout',
                       'JobQueue' => 'jobQueue',
                       'NodeOverrides' => 'nodeOverrides'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::SubmitJob - Arguments for method SubmitJob on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SubmitJob on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method SubmitJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SubmitJob.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    # To submit a job to a queue
    # This example submits a simple container job called example to the
    # HighPriority job queue.
    my $SubmitJobResponse = $batch->SubmitJob(
      'JobDefinition' => 'sleep60',
      'JobName'       => 'example',
      'JobQueue'      => 'HighPriority'
    );

    # Results:
    my $jobId   = $SubmitJobResponse->jobId;
    my $jobName = $SubmitJobResponse->jobName;

    # Returns a L<Paws::Batch::SubmitJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/SubmitJob>

=head1 ATTRIBUTES


=head2 ArrayProperties => Batch_ArrayProperties

The array properties for the submitted job, such as the size of the
array. The array size can be between 2 and 10,000. If you specify array
properties for a job, it becomes an array job. For more information,
see Array Jobs
(https://docs.aws.amazon.com/batch/latest/userguide/array_jobs.html) in
the I<AWS Batch User Guide>.



=head2 ContainerOverrides => Batch_ContainerOverrides

A list of container overrides in JSON format that specify the name of a
container in the specified job definition and the overrides it should
receive. You can override the default command for a container (that is
specified in the job definition or the Docker image) with a C<command>
override. You can also override existing environment variables (that
are specified in the job definition or Docker image) on a container or
add new environment variables to it with an C<environment> override.



=head2 DependsOn => ArrayRef[Batch_JobDependency]

A list of dependencies for the job. A job can depend upon a maximum of
20 jobs. You can specify a C<SEQUENTIAL> type dependency without
specifying a job ID for array jobs so that each child array job
completes sequentially, starting at index 0. You can also specify an
C<N_TO_N> type dependency with a job ID for array jobs. In that case,
each index child of this job must wait for the corresponding index
child of each dependency to complete before it can begin.



=head2 B<REQUIRED> JobDefinition => Str

The job definition used by this job. This value can be either a
C<name:revision> or the Amazon Resource Name (ARN) for the job
definition.



=head2 B<REQUIRED> JobName => Str

The name of the job. The first character must be alphanumeric, and up
to 128 letters (uppercase and lowercase), numbers, hyphens, and
underscores are allowed.



=head2 B<REQUIRED> JobQueue => Str

The job queue into which the job is submitted. You can specify either
the name or the Amazon Resource Name (ARN) of the queue.



=head2 NodeOverrides => Batch_NodeOverrides

A list of node overrides in JSON format that specify the node range to
target and the container overrides for that node range.



=head2 Parameters => Batch_ParametersMap

Additional parameters passed to the job that replace parameter
substitution placeholders that are set in the job definition.
Parameters are specified as a key and value pair mapping. Parameters in
a C<SubmitJob> request override any corresponding parameter defaults
from the job definition.



=head2 RetryStrategy => Batch_RetryStrategy

The retry strategy to use for failed jobs from this SubmitJob
operation. When a retry strategy is specified here, it overrides the
retry strategy defined in the job definition.



=head2 Timeout => Batch_JobTimeout

The timeout configuration for this SubmitJob operation. You can specify
a timeout duration after which AWS Batch terminates your jobs if they
have not finished. If a job is terminated due to a timeout, it is not
retried. The minimum value for the timeout is 60 seconds. This
configuration overrides any timeout configuration specified in the job
definition. For array jobs, child jobs have the same timeout
configuration as the parent job. For more information, see Job Timeouts
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html)
in the I<Amazon Elastic Container Service Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SubmitJob in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


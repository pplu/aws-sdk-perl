# Generated from default/object.tt
package Paws::Batch::JobDetail;
  use Moo;
  use Types::Standard qw/ArrayRef Int Str/;
  use Paws::Batch::Types qw/Batch_RetryStrategy Batch_NodeDetails Batch_ParametersMap Batch_ContainerDetail Batch_ArrayPropertiesDetail Batch_JobTimeout Batch_AttemptDetail Batch_JobDependency Batch_NodeProperties/;
  has ArrayProperties => (is => 'ro', isa => Batch_ArrayPropertiesDetail);
  has Attempts => (is => 'ro', isa => ArrayRef[Batch_AttemptDetail]);
  has Container => (is => 'ro', isa => Batch_ContainerDetail);
  has CreatedAt => (is => 'ro', isa => Int);
  has DependsOn => (is => 'ro', isa => ArrayRef[Batch_JobDependency]);
  has JobDefinition => (is => 'ro', isa => Str, required => 1);
  has JobId => (is => 'ro', isa => Str, required => 1);
  has JobName => (is => 'ro', isa => Str, required => 1);
  has JobQueue => (is => 'ro', isa => Str, required => 1);
  has NodeDetails => (is => 'ro', isa => Batch_NodeDetails);
  has NodeProperties => (is => 'ro', isa => Batch_NodeProperties);
  has Parameters => (is => 'ro', isa => Batch_ParametersMap);
  has RetryStrategy => (is => 'ro', isa => Batch_RetryStrategy);
  has StartedAt => (is => 'ro', isa => Int, required => 1);
  has Status => (is => 'ro', isa => Str, required => 1);
  has StatusReason => (is => 'ro', isa => Str);
  has StoppedAt => (is => 'ro', isa => Int);
  has Timeout => (is => 'ro', isa => Batch_JobTimeout);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DependsOn' => {
                                'class' => 'Paws::Batch::JobDependency',
                                'type' => 'ArrayRef[Batch_JobDependency]'
                              },
               'Status' => {
                             'type' => 'Str'
                           },
               'StartedAt' => {
                                'type' => 'Int'
                              },
               'JobName' => {
                              'type' => 'Str'
                            },
               'RetryStrategy' => {
                                    'class' => 'Paws::Batch::RetryStrategy',
                                    'type' => 'Batch_RetryStrategy'
                                  },
               'CreatedAt' => {
                                'type' => 'Int'
                              },
               'NodeProperties' => {
                                     'class' => 'Paws::Batch::NodeProperties',
                                     'type' => 'Batch_NodeProperties'
                                   },
               'ArrayProperties' => {
                                      'class' => 'Paws::Batch::ArrayPropertiesDetail',
                                      'type' => 'Batch_ArrayPropertiesDetail'
                                    },
               'Container' => {
                                'class' => 'Paws::Batch::ContainerDetail',
                                'type' => 'Batch_ContainerDetail'
                              },
               'JobId' => {
                            'type' => 'Str'
                          },
               'StatusReason' => {
                                   'type' => 'Str'
                                 },
               'StoppedAt' => {
                                'type' => 'Int'
                              },
               'Parameters' => {
                                 'class' => 'Paws::Batch::ParametersMap',
                                 'type' => 'Batch_ParametersMap'
                               },
               'JobDefinition' => {
                                    'type' => 'Str'
                                  },
               'Attempts' => {
                               'class' => 'Paws::Batch::AttemptDetail',
                               'type' => 'ArrayRef[Batch_AttemptDetail]'
                             },
               'Timeout' => {
                              'class' => 'Paws::Batch::JobTimeout',
                              'type' => 'Batch_JobTimeout'
                            },
               'JobQueue' => {
                               'type' => 'Str'
                             },
               'NodeDetails' => {
                                  'class' => 'Paws::Batch::NodeDetails',
                                  'type' => 'Batch_NodeDetails'
                                }
             },
  'NameInRequest' => {
                       'DependsOn' => 'dependsOn',
                       'Status' => 'status',
                       'StartedAt' => 'startedAt',
                       'JobName' => 'jobName',
                       'RetryStrategy' => 'retryStrategy',
                       'CreatedAt' => 'createdAt',
                       'NodeProperties' => 'nodeProperties',
                       'ArrayProperties' => 'arrayProperties',
                       'Container' => 'container',
                       'JobId' => 'jobId',
                       'StatusReason' => 'statusReason',
                       'StoppedAt' => 'stoppedAt',
                       'Parameters' => 'parameters',
                       'JobDefinition' => 'jobDefinition',
                       'Attempts' => 'attempts',
                       'Timeout' => 'timeout',
                       'JobQueue' => 'jobQueue',
                       'NodeDetails' => 'nodeDetails'
                     },
  'IsRequired' => {
                    'JobDefinition' => 1,
                    'Status' => 1,
                    'StartedAt' => 1,
                    'JobQueue' => 1,
                    'JobName' => 1,
                    'JobId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::JobDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::JobDetail object:

  $service_obj->Method(Att1 => { ArrayProperties => $value, ..., Timeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::JobDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ArrayProperties

=head1 DESCRIPTION

An object representing an AWS Batch job.

=head1 ATTRIBUTES


=head2 ArrayProperties => Batch_ArrayPropertiesDetail

  The array properties of the job, if it is an array job.


=head2 Attempts => ArrayRef[Batch_AttemptDetail]

  A list of job attempts associated with this job.


=head2 Container => Batch_ContainerDetail

  An object representing the details of the container that is associated
with the job.


=head2 CreatedAt => Int

  The Unix timestamp (in seconds and milliseconds) for when the job was
created. For non-array jobs and parent array jobs, this is when the job
entered the C<SUBMITTED> state (at the time SubmitJob was called). For
array child jobs, this is when the child job was spawned by its parent
and entered the C<PENDING> state.


=head2 DependsOn => ArrayRef[Batch_JobDependency]

  A list of job names or IDs on which this job depends.


=head2 B<REQUIRED> JobDefinition => Str

  The job definition that is used by this job.


=head2 B<REQUIRED> JobId => Str

  The ID for the job.


=head2 B<REQUIRED> JobName => Str

  The name of the job.


=head2 B<REQUIRED> JobQueue => Str

  The Amazon Resource Name (ARN) of the job queue with which the job is
associated.


=head2 NodeDetails => Batch_NodeDetails

  An object representing the details of a node that is associated with a
multi-node parallel job.


=head2 NodeProperties => Batch_NodeProperties

  An object representing the node properties of a multi-node parallel
job.


=head2 Parameters => Batch_ParametersMap

  Additional parameters passed to the job that replace parameter
substitution placeholders or override any corresponding parameter
defaults from the job definition.


=head2 RetryStrategy => Batch_RetryStrategy

  The retry strategy to use for this job if an attempt fails.


=head2 B<REQUIRED> StartedAt => Int

  The Unix timestamp (in seconds and milliseconds) for when the job was
started (when the job transitioned from the C<STARTING> state to the
C<RUNNING> state).


=head2 B<REQUIRED> Status => Str

  The current status for the job.

If your jobs do not progress to C<STARTING>, see Jobs Stuck in RUNNABLE
Status
(https://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html#job_stuck_in_runnable)
in the troubleshooting section of the I<AWS Batch User Guide>.


=head2 StatusReason => Str

  A short, human-readable string to provide additional details about the
current status of the job.


=head2 StoppedAt => Int

  The Unix timestamp (in seconds and milliseconds) for when the job was
stopped (when the job transitioned from the C<RUNNING> state to a
terminal state, such as C<SUCCEEDED> or C<FAILED>).


=head2 Timeout => Batch_JobTimeout

  The timeout configuration for the job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


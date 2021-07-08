package Paws::Batch;
  use Moose;
  sub service { 'batch' }
  sub signing_name { 'batch' }
  sub version { '2016-08-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::CancelJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateComputeEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::CreateComputeEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateJobQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::CreateJobQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteComputeEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::DeleteComputeEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteJobQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::DeleteJobQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::DeregisterJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeComputeEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::DescribeComputeEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJobDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::DescribeJobDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJobQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::DescribeJobQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::DescribeJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::ListJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::RegisterJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SubmitJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::SubmitJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::TerminateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateComputeEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::UpdateComputeEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateJobQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::UpdateJobQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllComputeEnvironments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeComputeEnvironments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeComputeEnvironments(@_, nextToken => $next_result->nextToken);
        push @{ $result->computeEnvironments }, @{ $next_result->computeEnvironments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'computeEnvironments') foreach (@{ $result->computeEnvironments });
        $result = $self->DescribeComputeEnvironments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'computeEnvironments') foreach (@{ $result->computeEnvironments });
    }

    return undef
  }
  sub DescribeAllJobDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeJobDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeJobDefinitions(@_, nextToken => $next_result->nextToken);
        push @{ $result->jobDefinitions }, @{ $next_result->jobDefinitions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'jobDefinitions') foreach (@{ $result->jobDefinitions });
        $result = $self->DescribeJobDefinitions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'jobDefinitions') foreach (@{ $result->jobDefinitions });
    }

    return undef
  }
  sub DescribeAllJobQueues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeJobQueues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeJobQueues(@_, nextToken => $next_result->nextToken);
        push @{ $result->jobQueues }, @{ $next_result->jobQueues };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'jobQueues') foreach (@{ $result->jobQueues });
        $result = $self->DescribeJobQueues(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'jobQueues') foreach (@{ $result->jobQueues });
    }

    return undef
  }
  sub ListAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->jobSummaryList }, @{ $next_result->jobSummaryList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'jobSummaryList') foreach (@{ $result->jobSummaryList });
        $result = $self->ListJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'jobSummaryList') foreach (@{ $result->jobSummaryList });
    }

    return undef
  }


  sub operations { qw/CancelJob CreateComputeEnvironment CreateJobQueue DeleteComputeEnvironment DeleteJobQueue DeregisterJobDefinition DescribeComputeEnvironments DescribeJobDefinitions DescribeJobQueues DescribeJobs ListJobs ListTagsForResource RegisterJobDefinition SubmitJob TagResource TerminateJob UntagResource UpdateComputeEnvironment UpdateJobQueue / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch - Perl Interface to AWS AWS Batch

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Batch');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Using AWS Batch, you can run batch computing workloads on the AWS
Cloud. Batch computing is a common means for developers, scientists,
and engineers to access large amounts of compute resources. AWS Batch
uses the advantages of this computing workload to remove the
undifferentiated heavy lifting of configuring and managing required
infrastructure. At the same time, it also adopts a familiar batch
computing software approach. Given these advantages, AWS Batch can help
you to efficiently provision resources in response to jobs submitted,
thus effectively helping you to eliminate capacity constraints, reduce
compute costs, and deliver your results more quickly.

As a fully managed service, AWS Batch can run batch computing workloads
of any scale. AWS Batch automatically provisions compute resources and
optimizes workload distribution based on the quantity and scale of your
specific workloads. With AWS Batch, there's no need to install or
manage batch computing software. This means that you can focus your
time and energy on analyzing results and solving your specific
problems.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10>


=head1 METHODS

=head2 CancelJob

=over

=item JobId => Str

=item Reason => Str


=back

Each argument is described in detail in: L<Paws::Batch::CancelJob>

Returns: a L<Paws::Batch::CancelJobResponse> instance

Cancels a job in an AWS Batch job queue. Jobs that are in the
C<SUBMITTED>, C<PENDING>, or C<RUNNABLE> state are canceled. Jobs that
have progressed to C<STARTING> or C<RUNNING> aren't canceled, but the
API operation still succeeds, even if no job is canceled. These jobs
must be terminated with the TerminateJob operation.


=head2 CreateComputeEnvironment

=over

=item ComputeEnvironmentName => Str

=item Type => Str

=item [ComputeResources => L<Paws::Batch::ComputeResource>]

=item [ServiceRole => Str]

=item [State => Str]

=item [Tags => L<Paws::Batch::TagrisTagsMap>]


=back

Each argument is described in detail in: L<Paws::Batch::CreateComputeEnvironment>

Returns: a L<Paws::Batch::CreateComputeEnvironmentResponse> instance

Creates an AWS Batch compute environment. You can create C<MANAGED> or
C<UNMANAGED> compute environments. C<MANAGED> compute environments can
use Amazon EC2 or AWS Fargate resources. C<UNMANAGED> compute
environments can only use EC2 resources.

In a managed compute environment, AWS Batch manages the capacity and
instance types of the compute resources within the environment. This is
based on the compute resource specification that you define or the
launch template
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html)
that you specify when you create the compute environment. Either, you
can choose to use EC2 On-Demand Instances and EC2 Spot Instances. Or,
you can use Fargate and Fargate Spot capacity in your managed compute
environment. You can optionally set a maximum price so that Spot
Instances only launch when the Spot Instance price is less than a
specified percentage of the On-Demand price.

Multi-node parallel jobs aren't supported on Spot Instances.

In an unmanaged compute environment, you can manage your own EC2
compute resources and have a lot of flexibility with how you configure
your compute resources. For example, you can use custom AMIs. However,
you must verify that each of your AMIs meet the Amazon ECS container
instance AMI specification. For more information, see container
instance AMIs
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_instance_AMIs.html)
in the I<Amazon Elastic Container Service Developer Guide>. After you
created your unmanaged compute environment, you can use the
DescribeComputeEnvironments operation to find the Amazon ECS cluster
that's associated with it. Then, launch your container instances into
that Amazon ECS cluster. For more information, see Launching an Amazon
ECS container instance
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html)
in the I<Amazon Elastic Container Service Developer Guide>.

AWS Batch doesn't upgrade the AMIs in a compute environment after the
environment is created. For example, it doesn't update the AMIs when a
newer version of the Amazon ECS optimized AMI is available. Therefore,
you're responsible for managing the guest operating system (including
its updates and security patches) and any additional application
software or utilities that you install on the compute resources. To use
a new AMI for your AWS Batch jobs, complete these steps:

=over

=item 1.

Create a new compute environment with the new AMI.

=item 2.

Add the compute environment to an existing job queue.

=item 3.

Remove the earlier compute environment from your job queue.

=item 4.

Delete the earlier compute environment.

=back



=head2 CreateJobQueue

=over

=item ComputeEnvironmentOrder => ArrayRef[L<Paws::Batch::ComputeEnvironmentOrder>]

=item JobQueueName => Str

=item Priority => Int

=item [State => Str]

=item [Tags => L<Paws::Batch::TagrisTagsMap>]


=back

Each argument is described in detail in: L<Paws::Batch::CreateJobQueue>

Returns: a L<Paws::Batch::CreateJobQueueResponse> instance

Creates an AWS Batch job queue. When you create a job queue, you
associate one or more compute environments to the queue and assign an
order of preference for the compute environments.

You also set a priority to the job queue that determines the order that
the AWS Batch scheduler places jobs onto its associated compute
environments. For example, if a compute environment is associated with
more than one job queue, the job queue with a higher priority is given
preference for scheduling jobs to that compute environment.


=head2 DeleteComputeEnvironment

=over

=item ComputeEnvironment => Str


=back

Each argument is described in detail in: L<Paws::Batch::DeleteComputeEnvironment>

Returns: a L<Paws::Batch::DeleteComputeEnvironmentResponse> instance

Deletes an AWS Batch compute environment.

Before you can delete a compute environment, you must set its state to
C<DISABLED> with the UpdateComputeEnvironment API operation and
disassociate it from any job queues with the UpdateJobQueue API
operation. Compute environments that use AWS Fargate resources must
terminate all active jobs on that compute environment before deleting
the compute environment. If this isn't done, the compute environment
enters an invalid state.


=head2 DeleteJobQueue

=over

=item JobQueue => Str


=back

Each argument is described in detail in: L<Paws::Batch::DeleteJobQueue>

Returns: a L<Paws::Batch::DeleteJobQueueResponse> instance

Deletes the specified job queue. You must first disable submissions for
a queue with the UpdateJobQueue operation. All jobs in the queue are
eventually terminated when you delete a job queue. The jobs are
terminated at a rate of about 16 jobs each second.

It's not necessary to disassociate compute environments from a queue
before submitting a C<DeleteJobQueue> request.


=head2 DeregisterJobDefinition

=over

=item JobDefinition => Str


=back

Each argument is described in detail in: L<Paws::Batch::DeregisterJobDefinition>

Returns: a L<Paws::Batch::DeregisterJobDefinitionResponse> instance

Deregisters an AWS Batch job definition. Job definitions are
permanently deleted after 180 days.


=head2 DescribeComputeEnvironments

=over

=item [ComputeEnvironments => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Batch::DescribeComputeEnvironments>

Returns: a L<Paws::Batch::DescribeComputeEnvironmentsResponse> instance

Describes one or more of your compute environments.

If you're using an unmanaged compute environment, you can use the
C<DescribeComputeEnvironment> operation to determine the
C<ecsClusterArn> that you should launch your Amazon ECS container
instances into.


=head2 DescribeJobDefinitions

=over

=item [JobDefinitionName => Str]

=item [JobDefinitions => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Batch::DescribeJobDefinitions>

Returns: a L<Paws::Batch::DescribeJobDefinitionsResponse> instance

Describes a list of job definitions. You can specify a C<status> (such
as C<ACTIVE>) to only return job definitions that match that status.


=head2 DescribeJobQueues

=over

=item [JobQueues => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Batch::DescribeJobQueues>

Returns: a L<Paws::Batch::DescribeJobQueuesResponse> instance

Describes one or more of your job queues.


=head2 DescribeJobs

=over

=item Jobs => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Batch::DescribeJobs>

Returns: a L<Paws::Batch::DescribeJobsResponse> instance

Describes a list of AWS Batch jobs.


=head2 ListJobs

=over

=item [ArrayJobId => Str]

=item [JobQueue => Str]

=item [JobStatus => Str]

=item [MaxResults => Int]

=item [MultiNodeJobId => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Batch::ListJobs>

Returns: a L<Paws::Batch::ListJobsResponse> instance

Returns a list of AWS Batch jobs.

You must specify only one of the following items:

=over

=item *

A job queue ID to return a list of jobs in that job queue

=item *

A multi-node parallel job ID to return a list of nodes for that job

=item *

An array job ID to return a list of the children for that job

=back

You can filter the results by job status with the C<jobStatus>
parameter. If you don't specify a status, only C<RUNNING> jobs are
returned.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Batch::ListTagsForResource>

Returns: a L<Paws::Batch::ListTagsForResourceResponse> instance

Lists the tags for an AWS Batch resource. AWS Batch resources that
support tags are compute environments, jobs, job definitions, and job
queues. ARNs for child jobs of array and multi-node parallel (MNP) jobs
are not supported.


=head2 RegisterJobDefinition

=over

=item JobDefinitionName => Str

=item Type => Str

=item [ContainerProperties => L<Paws::Batch::ContainerProperties>]

=item [NodeProperties => L<Paws::Batch::NodeProperties>]

=item [Parameters => L<Paws::Batch::ParametersMap>]

=item [PlatformCapabilities => ArrayRef[Str|Undef]]

=item [PropagateTags => Bool]

=item [RetryStrategy => L<Paws::Batch::RetryStrategy>]

=item [Tags => L<Paws::Batch::TagrisTagsMap>]

=item [Timeout => L<Paws::Batch::JobTimeout>]


=back

Each argument is described in detail in: L<Paws::Batch::RegisterJobDefinition>

Returns: a L<Paws::Batch::RegisterJobDefinitionResponse> instance

Registers an AWS Batch job definition.


=head2 SubmitJob

=over

=item JobDefinition => Str

=item JobName => Str

=item JobQueue => Str

=item [ArrayProperties => L<Paws::Batch::ArrayProperties>]

=item [ContainerOverrides => L<Paws::Batch::ContainerOverrides>]

=item [DependsOn => ArrayRef[L<Paws::Batch::JobDependency>]]

=item [NodeOverrides => L<Paws::Batch::NodeOverrides>]

=item [Parameters => L<Paws::Batch::ParametersMap>]

=item [PropagateTags => Bool]

=item [RetryStrategy => L<Paws::Batch::RetryStrategy>]

=item [Tags => L<Paws::Batch::TagrisTagsMap>]

=item [Timeout => L<Paws::Batch::JobTimeout>]


=back

Each argument is described in detail in: L<Paws::Batch::SubmitJob>

Returns: a L<Paws::Batch::SubmitJobResponse> instance

Submits an AWS Batch job from a job definition. Parameters that are
specified during SubmitJob override parameters defined in the job
definition. vCPU and memory requirements that are specified in the
C<ResourceRequirements> objects in the job definition are the
exception. They can't be overridden this way using the C<memory> and
C<vcpus> parameters. Rather, you must specify updates to job definition
parameters in a C<ResourceRequirements> object that's included in the
C<containerOverrides> parameter.

Jobs that run on Fargate resources can't be guaranteed to run for more
than 14 days. This is because, after 14 days, Fargate resources might
become unavailable and job might be terminated.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Batch::TagrisTagsMap>


=back

Each argument is described in detail in: L<Paws::Batch::TagResource>

Returns: a L<Paws::Batch::TagResourceResponse> instance

Associates the specified tags to a resource with the specified
C<resourceArn>. If existing tags on a resource aren't specified in the
request parameters, they aren't changed. When a resource is deleted,
the tags associated with that resource are deleted as well. AWS Batch
resources that support tags are compute environments, jobs, job
definitions, and job queues. ARNs for child jobs of array and
multi-node parallel (MNP) jobs are not supported.


=head2 TerminateJob

=over

=item JobId => Str

=item Reason => Str


=back

Each argument is described in detail in: L<Paws::Batch::TerminateJob>

Returns: a L<Paws::Batch::TerminateJobResponse> instance

Terminates a job in a job queue. Jobs that are in the C<STARTING> or
C<RUNNING> state are terminated, which causes them to transition to
C<FAILED>. Jobs that have not progressed to the C<STARTING> state are
cancelled.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Batch::UntagResource>

Returns: a L<Paws::Batch::UntagResourceResponse> instance

Deletes specified tags from an AWS Batch resource.


=head2 UpdateComputeEnvironment

=over

=item ComputeEnvironment => Str

=item [ComputeResources => L<Paws::Batch::ComputeResourceUpdate>]

=item [ServiceRole => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::Batch::UpdateComputeEnvironment>

Returns: a L<Paws::Batch::UpdateComputeEnvironmentResponse> instance

Updates an AWS Batch compute environment.


=head2 UpdateJobQueue

=over

=item JobQueue => Str

=item [ComputeEnvironmentOrder => ArrayRef[L<Paws::Batch::ComputeEnvironmentOrder>]]

=item [Priority => Int]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::Batch::UpdateJobQueue>

Returns: a L<Paws::Batch::UpdateJobQueueResponse> instance

Updates a job queue.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllComputeEnvironments(sub { },[ComputeEnvironments => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllComputeEnvironments([ComputeEnvironments => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - computeEnvironments, passing the object as the first parameter, and the string 'computeEnvironments' as the second parameter 

If not, it will return a a L<Paws::Batch::DescribeComputeEnvironmentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllJobDefinitions(sub { },[JobDefinitionName => Str, JobDefinitions => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Status => Str])

=head2 DescribeAllJobDefinitions([JobDefinitionName => Str, JobDefinitions => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobDefinitions, passing the object as the first parameter, and the string 'jobDefinitions' as the second parameter 

If not, it will return a a L<Paws::Batch::DescribeJobDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllJobQueues(sub { },[JobQueues => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllJobQueues([JobQueues => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobQueues, passing the object as the first parameter, and the string 'jobQueues' as the second parameter 

If not, it will return a a L<Paws::Batch::DescribeJobQueuesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobs(sub { },[ArrayJobId => Str, JobQueue => Str, JobStatus => Str, MaxResults => Int, MultiNodeJobId => Str, NextToken => Str])

=head2 ListAllJobs([ArrayJobId => Str, JobQueue => Str, JobStatus => Str, MaxResults => Int, MultiNodeJobId => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobSummaryList, passing the object as the first parameter, and the string 'jobSummaryList' as the second parameter 

If not, it will return a a L<Paws::Batch::ListJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


package Paws::Batch;
  use Moose;
  sub service { 'batch' }
  sub version { '2016-08-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';

  
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
  sub TerminateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Batch::TerminateJob', @_);
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
  


  sub operations { qw/CancelJob CreateComputeEnvironment CreateJobQueue DeleteComputeEnvironment DeleteJobQueue DeregisterJobDefinition DescribeComputeEnvironments DescribeJobDefinitions DescribeJobQueues DescribeJobs ListJobs RegisterJobDefinition SubmitJob TerminateJob UpdateComputeEnvironment UpdateJobQueue / }

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

AWS Batch enables you to run batch computing workloads on the AWS
Cloud. Batch computing is a common way for developers, scientists, and
engineers to access large amounts of compute resources, and AWS Batch
removes the undifferentiated heavy lifting of configuring and managing
the required infrastructure. AWS Batch will be familiar to users of
traditional batch computing software. This service can efficiently
provision resources in response to jobs submitted in order to eliminate
capacity constraints, reduce compute costs, and deliver results
quickly.

As a fully managed service, AWS Batch enables developers, scientists,
and engineers to run batch computing workloads of any scale. AWS Batch
automatically provisions compute resources and optimizes the workload
distribution based on the quantity and scale of the workloads. With AWS
Batch, there is no need to install or manage batch computing software,
which allows you to focus on analyzing results and solving problems.
AWS Batch reduces operational complexities, saves time, and reduces
costs, which makes it easy for developers, scientists, and engineers to
run their batch jobs in the AWS Cloud.

=head1 METHODS

=head2 CancelJob(JobId => Str, Reason => Str)

Each argument is described in detail in: L<Paws::Batch::CancelJob>

Returns: a L<Paws::Batch::CancelJobResponse> instance

  Cancels jobs in an AWS Batch job queue. Jobs that are in the
C<SUBMITTED>, C<PENDING>, or C<RUNNABLE> state are cancelled. Jobs that
have progressed to C<STARTING> or C<RUNNING> are not cancelled (but the
API operation still succeeds, even if no jobs are cancelled); these
jobs must be terminated with the TerminateJob operation.


=head2 CreateComputeEnvironment(ComputeEnvironmentName => Str, ServiceRole => Str, Type => Str, [ComputeResources => L<Paws::Batch::ComputeResource>, State => Str])

Each argument is described in detail in: L<Paws::Batch::CreateComputeEnvironment>

Returns: a L<Paws::Batch::CreateComputeEnvironmentResponse> instance

  Creates an AWS Batch compute environment. You can create C<MANAGED> or
C<UNMANAGED>compute environments.

In a managed compute environment, AWS Batch manages the compute
resources within the environment, based on the compute resources that
you specify. Instances launched into a managed compute environment use
the latest Amazon ECS-optimized AMI. You can choose to use Amazon EC2
On-Demand instances in your managed compute environment, or you can use
Amazon EC2 Spot instances that only launch when the Spot bid price is
below a specified percentage of the On-Demand price.

In an unmanaged compute environment, you can manage your own compute
resources. This provides more compute resource configuration options,
such as using a custom AMI, but you must ensure that your AMI meets the
Amazon ECS container instance AMI specification. For more information,
see Container Instance AMIs in the I<Amazon EC2 Container Service
Developer Guide>. After you have created your unmanaged compute
environment, you can use the DescribeComputeEnvironments operation to
find the Amazon ECS cluster that is associated with it and then
manually launch your container instances into that Amazon ECS cluster.
For more information, see Launching an Amazon ECS Container Instance in
the I<Amazon EC2 Container Service Developer Guide>.


=head2 CreateJobQueue(ComputeEnvironmentOrder => ArrayRef[L<Paws::Batch::ComputeEnvironmentOrder>], JobQueueName => Str, Priority => Int, [State => Str])

Each argument is described in detail in: L<Paws::Batch::CreateJobQueue>

Returns: a L<Paws::Batch::CreateJobQueueResponse> instance

  Creates an AWS Batch job queue. When you create a job queue, you
associate one or more compute environments to the queue and assign an
order of preference for the compute environments.

You also set a priority to the job queue that determines the order in
which the AWS Batch scheduler places jobs onto its associated compute
environments. For example, if a compute environment is associated with
more than one job queue, the job queue with a higher priority is given
preference for scheduling jobs to that compute environment.


=head2 DeleteComputeEnvironment(ComputeEnvironment => Str)

Each argument is described in detail in: L<Paws::Batch::DeleteComputeEnvironment>

Returns: a L<Paws::Batch::DeleteComputeEnvironmentResponse> instance

  Deletes an AWS Batch compute environment.

Before you can delete a compute environment, you must set its state to
C<DISABLED> with the UpdateComputeEnvironment API operation and
disassociate it from any job queues with the UpdateJobQueue API
operation.


=head2 DeleteJobQueue(JobQueue => Str)

Each argument is described in detail in: L<Paws::Batch::DeleteJobQueue>

Returns: a L<Paws::Batch::DeleteJobQueueResponse> instance

  Deletes the specified job queue. You must first disable submissions for
a queue with the UpdateJobQueue operation and terminate any jobs that
have not completed with the TerminateJob.

It is not necessary to disassociate compute environments from a queue
before submitting a C<DeleteJobQueue> request.


=head2 DeregisterJobDefinition(JobDefinition => Str)

Each argument is described in detail in: L<Paws::Batch::DeregisterJobDefinition>

Returns: a L<Paws::Batch::DeregisterJobDefinitionResponse> instance

  Deregisters an AWS Batch job definition.


=head2 DescribeComputeEnvironments([ComputeEnvironments => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Batch::DescribeComputeEnvironments>

Returns: a L<Paws::Batch::DescribeComputeEnvironmentsResponse> instance

  Describes one or more of your compute environments.

If you are using an unmanaged compute environment, you can use the
C<DescribeComputeEnvironment> operation to determine the
C<ecsClusterArn> that you should launch your Amazon ECS container
instances into.


=head2 DescribeJobDefinitions([JobDefinitionName => Str, JobDefinitions => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Status => Str])

Each argument is described in detail in: L<Paws::Batch::DescribeJobDefinitions>

Returns: a L<Paws::Batch::DescribeJobDefinitionsResponse> instance

  Describes a list of job definitions. You can specify a C<status> (such
as C<ACTIVE>) to only return job definitions that match that status.


=head2 DescribeJobQueues([JobQueues => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Batch::DescribeJobQueues>

Returns: a L<Paws::Batch::DescribeJobQueuesResponse> instance

  Describes one or more of your job queues.


=head2 DescribeJobs(Jobs => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Batch::DescribeJobs>

Returns: a L<Paws::Batch::DescribeJobsResponse> instance

  Describes a list of AWS Batch jobs.


=head2 ListJobs(JobQueue => Str, [JobStatus => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Batch::ListJobs>

Returns: a L<Paws::Batch::ListJobsResponse> instance

  Returns a list of task jobs for a specified job queue. You can filter
the results by job status with the C<jobStatus> parameter.


=head2 RegisterJobDefinition(JobDefinitionName => Str, Type => Str, [ContainerProperties => L<Paws::Batch::ContainerProperties>, Parameters => L<Paws::Batch::ParametersMap>])

Each argument is described in detail in: L<Paws::Batch::RegisterJobDefinition>

Returns: a L<Paws::Batch::RegisterJobDefinitionResponse> instance

  Registers an AWS Batch job definition.


=head2 SubmitJob(JobDefinition => Str, JobName => Str, JobQueue => Str, [ContainerOverrides => L<Paws::Batch::ContainerOverrides>, DependsOn => ArrayRef[L<Paws::Batch::JobDependency>], Parameters => L<Paws::Batch::ParametersMap>])

Each argument is described in detail in: L<Paws::Batch::SubmitJob>

Returns: a L<Paws::Batch::SubmitJobResponse> instance

  Submits an AWS Batch job from a job definition. Parameters specified
during SubmitJob override parameters defined in the job definition.


=head2 TerminateJob(JobId => Str, Reason => Str)

Each argument is described in detail in: L<Paws::Batch::TerminateJob>

Returns: a L<Paws::Batch::TerminateJobResponse> instance

  Terminates jobs in a job queue. Jobs that are in the C<STARTING> or
C<RUNNING> state are terminated, which causes them to transition to
C<FAILED>. Jobs that have not progressed to the C<STARTING> state are
cancelled.


=head2 UpdateComputeEnvironment(ComputeEnvironment => Str, [ComputeResources => L<Paws::Batch::ComputeResourceUpdate>, ServiceRole => Str, State => Str])

Each argument is described in detail in: L<Paws::Batch::UpdateComputeEnvironment>

Returns: a L<Paws::Batch::UpdateComputeEnvironmentResponse> instance

  Updates an AWS Batch compute environment.


=head2 UpdateJobQueue(JobQueue => Str, [ComputeEnvironmentOrder => ArrayRef[L<Paws::Batch::ComputeEnvironmentOrder>], Priority => Int, State => Str])

Each argument is described in detail in: L<Paws::Batch::UpdateJobQueue>

Returns: a L<Paws::Batch::UpdateJobQueueResponse> instance

  Updates a job queue.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


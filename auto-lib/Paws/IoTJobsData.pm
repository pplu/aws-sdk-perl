package Paws::IoTJobsData;
  use Moose;
  sub service { 'data.jobs.iot' }
  sub signing_name { 'iot-jobs-data' }
  sub version { '2017-09-29' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub DescribeJobExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTJobsData::DescribeJobExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPendingJobExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTJobsData::GetPendingJobExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartNextPendingJobExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTJobsData::StartNextPendingJobExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateJobExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTJobsData::UpdateJobExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/DescribeJobExecution GetPendingJobExecutions StartNextPendingJobExecution UpdateJobExecution / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTJobsData - Perl Interface to AWS AWS IoT Jobs Data Plane

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoTJobsData');
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

AWS IoT Jobs is a service that allows you to define a set of jobs
E<mdash> remote operations that are sent to and executed on one or more
devices connected to AWS IoT. For example, you can define a job that
instructs a set of devices to download and install application or
firmware updates, reboot, rotate certificates, or perform remote
troubleshooting operations.

To create a job, you make a job document which is a description of the
remote operations to be performed, and you specify a list of targets
that should perform the operations. The targets can be individual
things, thing groups or both.

AWS IoT Jobs sends a message to inform the targets that a job is
available. The target starts the execution of the job by downloading
the job document, performing the operations it specifies, and reporting
its progress to AWS IoT. The Jobs service provides commands to track
the progress of a job on a specific target and for all the targets of
the job

For the AWS API documentation, see L<https://docs.aws.amazon.com/iot/>


=head1 METHODS

=head2 DescribeJobExecution

=over

=item JobId => Str

=item ThingName => Str

=item [ExecutionNumber => Int]

=item [IncludeJobDocument => Bool]


=back

Each argument is described in detail in: L<Paws::IoTJobsData::DescribeJobExecution>

Returns: a L<Paws::IoTJobsData::DescribeJobExecutionResponse> instance

Gets details of a job execution.


=head2 GetPendingJobExecutions

=over

=item ThingName => Str


=back

Each argument is described in detail in: L<Paws::IoTJobsData::GetPendingJobExecutions>

Returns: a L<Paws::IoTJobsData::GetPendingJobExecutionsResponse> instance

Gets the list of all jobs for a thing that are not in a terminal
status.


=head2 StartNextPendingJobExecution

=over

=item ThingName => Str

=item [StatusDetails => L<Paws::IoTJobsData::DetailsMap>]

=item [StepTimeoutInMinutes => Int]


=back

Each argument is described in detail in: L<Paws::IoTJobsData::StartNextPendingJobExecution>

Returns: a L<Paws::IoTJobsData::StartNextPendingJobExecutionResponse> instance

Gets and starts the next pending (status IN_PROGRESS or QUEUED) job
execution for a thing.


=head2 UpdateJobExecution

=over

=item JobId => Str

=item Status => Str

=item ThingName => Str

=item [ExecutionNumber => Int]

=item [ExpectedVersion => Int]

=item [IncludeJobDocument => Bool]

=item [IncludeJobExecutionState => Bool]

=item [StatusDetails => L<Paws::IoTJobsData::DetailsMap>]

=item [StepTimeoutInMinutes => Int]


=back

Each argument is described in detail in: L<Paws::IoTJobsData::UpdateJobExecution>

Returns: a L<Paws::IoTJobsData::UpdateJobExecutionResponse> instance

Updates the status of a job execution.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


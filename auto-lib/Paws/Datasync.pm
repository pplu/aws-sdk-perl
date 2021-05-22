package Paws::Datasync;
  use Moose;
  sub service { 'datasync' }
  sub signing_name { 'datasync' }
  sub version { '2018-11-09' }
  sub target_prefix { 'FmrsService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CancelTaskExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CancelTaskExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocationEfs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateLocationEfs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocationFsxWindows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateLocationFsxWindows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocationNfs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateLocationNfs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocationObjectStorage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateLocationObjectStorage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocationS3 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateLocationS3', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocationSmb {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateLocationSmb', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::CreateTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DeleteAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DeleteLocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DeleteTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocationEfs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeLocationEfs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocationFsxWindows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeLocationFsxWindows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocationNfs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeLocationNfs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocationObjectStorage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeLocationObjectStorage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocationS3 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeLocationS3', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocationSmb {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeLocationSmb', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTaskExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::DescribeTaskExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAgents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::ListAgents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLocations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::ListLocations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTaskExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::ListTaskExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::ListTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTaskExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::StartTaskExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLocationNfs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateLocationNfs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLocationObjectStorage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateLocationObjectStorage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLocationSmb {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateLocationSmb', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTaskExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Datasync::UpdateTaskExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAgents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAgents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAgents(@_, NextToken => $next_result->NextToken);
        push @{ $result->Agents }, @{ $next_result->Agents };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Agents') foreach (@{ $result->Agents });
        $result = $self->ListAgents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Agents') foreach (@{ $result->Agents });
    }

    return undef
  }
  sub ListAllLocations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLocations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLocations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Locations }, @{ $next_result->Locations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Locations') foreach (@{ $result->Locations });
        $result = $self->ListLocations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Locations') foreach (@{ $result->Locations });
    }

    return undef
  }
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTagsForResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTagsForResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub ListAllTaskExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTaskExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTaskExecutions(@_, NextToken => $next_result->NextToken);
        push @{ $result->TaskExecutions }, @{ $next_result->TaskExecutions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TaskExecutions') foreach (@{ $result->TaskExecutions });
        $result = $self->ListTaskExecutions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TaskExecutions') foreach (@{ $result->TaskExecutions });
    }

    return undef
  }
  sub ListAllTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tasks }, @{ $next_result->Tasks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tasks') foreach (@{ $result->Tasks });
        $result = $self->ListTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tasks') foreach (@{ $result->Tasks });
    }

    return undef
  }


  sub operations { qw/CancelTaskExecution CreateAgent CreateLocationEfs CreateLocationFsxWindows CreateLocationNfs CreateLocationObjectStorage CreateLocationS3 CreateLocationSmb CreateTask DeleteAgent DeleteLocation DeleteTask DescribeAgent DescribeLocationEfs DescribeLocationFsxWindows DescribeLocationNfs DescribeLocationObjectStorage DescribeLocationS3 DescribeLocationSmb DescribeTask DescribeTaskExecution ListAgents ListLocations ListTagsForResource ListTaskExecutions ListTasks StartTaskExecution TagResource UntagResource UpdateAgent UpdateLocationNfs UpdateLocationObjectStorage UpdateLocationSmb UpdateTask UpdateTaskExecution / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync - Perl Interface to AWS AWS DataSync

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Datasync');
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

AWS DataSync

AWS DataSync is a managed data transfer service that makes it simpler
for you to automate moving data between on-premises storage and Amazon
Simple Storage Service (Amazon S3) or Amazon Elastic File System
(Amazon EFS).

This API interface reference for AWS DataSync contains documentation
for a programming interface that you can use to manage AWS DataSync.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09>


=head1 METHODS

=head2 CancelTaskExecution

=over

=item TaskExecutionArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::CancelTaskExecution>

Returns: a L<Paws::Datasync::CancelTaskExecutionResponse> instance

Cancels execution of a task.

When you cancel a task execution, the transfer of some files is
abruptly interrupted. The contents of files that are transferred to the
destination might be incomplete or inconsistent with the source files.
However, if you start a new task execution on the same task and you
allow the task execution to complete, file content on the destination
is complete and consistent. This applies to other unexpected failures
that interrupt a task execution. In all of these cases, AWS DataSync
successfully complete the transfer when you start the next task
execution.


=head2 CreateAgent

=over

=item ActivationKey => Str

=item [AgentName => Str]

=item [SecurityGroupArns => ArrayRef[Str|Undef]]

=item [SubnetArns => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]

=item [VpcEndpointId => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateAgent>

Returns: a L<Paws::Datasync::CreateAgentResponse> instance

Activates an AWS DataSync agent that you have deployed on your host.
The activation process associates your agent with your account. In the
activation process, you specify information such as the AWS Region that
you want to activate the agent in. You activate the agent in the AWS
Region where your target locations (in Amazon S3 or Amazon EFS) reside.
Your tasks are created in this AWS Region.

You can activate the agent in a VPC (virtual private cloud) or provide
the agent access to a VPC endpoint so you can run tasks without going
over the public internet.

You can use an agent for more than one location. If a task uses
multiple agents, all of them need to have status AVAILABLE for the task
to run. If you use multiple agents for a source location, the status of
all the agents must be AVAILABLE for the task to run.

Agents are automatically updated by AWS on a regular basis, using a
mechanism that ensures minimal interruption to your tasks.


=head2 CreateLocationEfs

=over

=item Ec2Config => L<Paws::Datasync::Ec2Config>

=item EfsFilesystemArn => Str

=item [Subdirectory => Str]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateLocationEfs>

Returns: a L<Paws::Datasync::CreateLocationEfsResponse> instance

Creates an endpoint for an Amazon EFS file system.


=head2 CreateLocationFsxWindows

=over

=item FsxFilesystemArn => Str

=item Password => Str

=item SecurityGroupArns => ArrayRef[Str|Undef]

=item User => Str

=item [Domain => Str]

=item [Subdirectory => Str]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateLocationFsxWindows>

Returns: a L<Paws::Datasync::CreateLocationFsxWindowsResponse> instance

Creates an endpoint for an Amazon FSx for Windows File Server file
system.


=head2 CreateLocationNfs

=over

=item OnPremConfig => L<Paws::Datasync::OnPremConfig>

=item ServerHostname => Str

=item Subdirectory => Str

=item [MountOptions => L<Paws::Datasync::NfsMountOptions>]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateLocationNfs>

Returns: a L<Paws::Datasync::CreateLocationNfsResponse> instance

Defines a file system on a Network File System (NFS) server that can be
read from or written to.


=head2 CreateLocationObjectStorage

=over

=item AgentArns => ArrayRef[Str|Undef]

=item BucketName => Str

=item ServerHostname => Str

=item [AccessKey => Str]

=item [SecretKey => Str]

=item [ServerPort => Int]

=item [ServerProtocol => Str]

=item [Subdirectory => Str]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateLocationObjectStorage>

Returns: a L<Paws::Datasync::CreateLocationObjectStorageResponse> instance

Creates an endpoint for a self-managed object storage bucket. For more
information about self-managed object storage locations, see
create-object-location.


=head2 CreateLocationS3

=over

=item S3BucketArn => Str

=item S3Config => L<Paws::Datasync::S3Config>

=item [AgentArns => ArrayRef[Str|Undef]]

=item [S3StorageClass => Str]

=item [Subdirectory => Str]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateLocationS3>

Returns: a L<Paws::Datasync::CreateLocationS3Response> instance

Creates an endpoint for an Amazon S3 bucket.

For more information, see
https://docs.aws.amazon.com/datasync/latest/userguide/create-locations-cli.html#create-location-s3-cli
in the I<AWS DataSync User Guide>.


=head2 CreateLocationSmb

=over

=item AgentArns => ArrayRef[Str|Undef]

=item Password => Str

=item ServerHostname => Str

=item Subdirectory => Str

=item User => Str

=item [Domain => Str]

=item [MountOptions => L<Paws::Datasync::SmbMountOptions>]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateLocationSmb>

Returns: a L<Paws::Datasync::CreateLocationSmbResponse> instance

Defines a file system on a Server Message Block (SMB) server that can
be read from or written to.


=head2 CreateTask

=over

=item DestinationLocationArn => Str

=item SourceLocationArn => Str

=item [CloudWatchLogGroupArn => Str]

=item [Excludes => ArrayRef[L<Paws::Datasync::FilterRule>]]

=item [Name => Str]

=item [Options => L<Paws::Datasync::Options>]

=item [Schedule => L<Paws::Datasync::TaskSchedule>]

=item [Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]]


=back

Each argument is described in detail in: L<Paws::Datasync::CreateTask>

Returns: a L<Paws::Datasync::CreateTaskResponse> instance

Creates a task.

A task includes a source location and a destination location, and a
configuration that specifies how data is transferred. A task always
transfers data from the source location to the destination location.
The configuration specifies options such as task scheduling, bandwidth
limits, etc. A task is the complete definition of a data transfer.

When you create a task that transfers data between AWS services in
different AWS Regions, one of the two locations that you specify must
reside in the Region where DataSync is being used. The other location
must be specified in a different Region.

You can transfer data between commercial AWS Regions except for China,
or between AWS GovCloud (US-East and US-West) Regions.

When you use DataSync to copy files or objects between AWS Regions, you
pay for data transfer between Regions. This is billed as data transfer
OUT from your source Region to your destination Region. For more
information, see Data Transfer pricing
(http://aws.amazon.com/ec2/pricing/on-demand/#Data_Transfer).


=head2 DeleteAgent

=over

=item AgentArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DeleteAgent>

Returns: a L<Paws::Datasync::DeleteAgentResponse> instance

Deletes an agent. To specify which agent to delete, use the Amazon
Resource Name (ARN) of the agent in your request. The operation
disassociates the agent from your AWS account. However, it doesn't
delete the agent virtual machine (VM) from your on-premises
environment.


=head2 DeleteLocation

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DeleteLocation>

Returns: a L<Paws::Datasync::DeleteLocationResponse> instance

Deletes the configuration of a location used by AWS DataSync.


=head2 DeleteTask

=over

=item TaskArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DeleteTask>

Returns: a L<Paws::Datasync::DeleteTaskResponse> instance

Deletes a task.


=head2 DescribeAgent

=over

=item AgentArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeAgent>

Returns: a L<Paws::Datasync::DescribeAgentResponse> instance

Returns metadata such as the name, the network interfaces, and the
status (that is, whether the agent is running or not) for an agent. To
specify which agent to describe, use the Amazon Resource Name (ARN) of
the agent in your request.


=head2 DescribeLocationEfs

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeLocationEfs>

Returns: a L<Paws::Datasync::DescribeLocationEfsResponse> instance

Returns metadata, such as the path information about an Amazon EFS
location.


=head2 DescribeLocationFsxWindows

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeLocationFsxWindows>

Returns: a L<Paws::Datasync::DescribeLocationFsxWindowsResponse> instance

Returns metadata, such as the path information about an Amazon FSx for
Windows File Server location.


=head2 DescribeLocationNfs

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeLocationNfs>

Returns: a L<Paws::Datasync::DescribeLocationNfsResponse> instance

Returns metadata, such as the path information, about an NFS location.


=head2 DescribeLocationObjectStorage

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeLocationObjectStorage>

Returns: a L<Paws::Datasync::DescribeLocationObjectStorageResponse> instance

Returns metadata about a self-managed object storage server location.
For more information about self-managed object storage locations, see
create-object-location.


=head2 DescribeLocationS3

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeLocationS3>

Returns: a L<Paws::Datasync::DescribeLocationS3Response> instance

Returns metadata, such as bucket name, about an Amazon S3 bucket
location.


=head2 DescribeLocationSmb

=over

=item LocationArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeLocationSmb>

Returns: a L<Paws::Datasync::DescribeLocationSmbResponse> instance

Returns metadata, such as the path and user information about an SMB
location.


=head2 DescribeTask

=over

=item TaskArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeTask>

Returns: a L<Paws::Datasync::DescribeTaskResponse> instance

Returns metadata about a task.


=head2 DescribeTaskExecution

=over

=item TaskExecutionArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::DescribeTaskExecution>

Returns: a L<Paws::Datasync::DescribeTaskExecutionResponse> instance

Returns detailed metadata about a task that is being executed.


=head2 ListAgents

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::ListAgents>

Returns: a L<Paws::Datasync::ListAgentsResponse> instance

Returns a list of agents owned by an AWS account in the AWS Region
specified in the request. The returned list is ordered by agent Amazon
Resource Name (ARN).

By default, this operation returns a maximum of 100 agents. This
operation supports pagination that enables you to optionally reduce the
number of agents returned in a response.

If you have more agents than are returned in a response (that is, the
response returns only a truncated list of your agents), the response
contains a marker that you can specify in your next request to fetch
the next page of agents.


=head2 ListLocations

=over

=item [Filters => ArrayRef[L<Paws::Datasync::LocationFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::ListLocations>

Returns: a L<Paws::Datasync::ListLocationsResponse> instance

Returns a list of source and destination locations.

If you have more locations than are returned in a response (that is,
the response returns only a truncated list of your agents), the
response contains a token that you can specify in your next request to
fetch the next page of locations.


=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::ListTagsForResource>

Returns: a L<Paws::Datasync::ListTagsForResourceResponse> instance

Returns all the tags associated with a specified resource.


=head2 ListTaskExecutions

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TaskArn => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::ListTaskExecutions>

Returns: a L<Paws::Datasync::ListTaskExecutionsResponse> instance

Returns a list of executed tasks.


=head2 ListTasks

=over

=item [Filters => ArrayRef[L<Paws::Datasync::TaskFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::ListTasks>

Returns: a L<Paws::Datasync::ListTasksResponse> instance

Returns a list of all the tasks.


=head2 StartTaskExecution

=over

=item TaskArn => Str

=item [Includes => ArrayRef[L<Paws::Datasync::FilterRule>]]

=item [OverrideOptions => L<Paws::Datasync::Options>]


=back

Each argument is described in detail in: L<Paws::Datasync::StartTaskExecution>

Returns: a L<Paws::Datasync::StartTaskExecutionResponse> instance

Starts a specific invocation of a task. A C<TaskExecution> value
represents an individual run of a task. Each task can have at most one
C<TaskExecution> at a time.

C<TaskExecution> has the following transition phases: INITIALIZING |
PREPARING | TRANSFERRING | VERIFYING | SUCCESS/FAILURE.

For detailed information, see the Task Execution section in the
Components and Terminology topic in the I<AWS DataSync User Guide>.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]


=back

Each argument is described in detail in: L<Paws::Datasync::TagResource>

Returns: a L<Paws::Datasync::TagResourceResponse> instance

Applies a key-value pair to an AWS resource.


=head2 UntagResource

=over

=item Keys => ArrayRef[Str|Undef]

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::UntagResource>

Returns: a L<Paws::Datasync::UntagResourceResponse> instance

Removes a tag from an AWS resource.


=head2 UpdateAgent

=over

=item AgentArn => Str

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateAgent>

Returns: a L<Paws::Datasync::UpdateAgentResponse> instance

Updates the name of an agent.


=head2 UpdateLocationNfs

=over

=item LocationArn => Str

=item [MountOptions => L<Paws::Datasync::NfsMountOptions>]

=item [OnPremConfig => L<Paws::Datasync::OnPremConfig>]

=item [Subdirectory => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateLocationNfs>

Returns: a L<Paws::Datasync::UpdateLocationNfsResponse> instance

Updates some of the parameters of a previously created location for
Network File System (NFS) access. For information about creating an NFS
location, see create-nfs-location.


=head2 UpdateLocationObjectStorage

=over

=item LocationArn => Str

=item [AccessKey => Str]

=item [AgentArns => ArrayRef[Str|Undef]]

=item [SecretKey => Str]

=item [ServerPort => Int]

=item [ServerProtocol => Str]

=item [Subdirectory => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateLocationObjectStorage>

Returns: a L<Paws::Datasync::UpdateLocationObjectStorageResponse> instance

Updates some of the parameters of a previously created location for
self-managed object storage server access. For information about
creating a self-managed object storage location, see
create-object-location.


=head2 UpdateLocationSmb

=over

=item LocationArn => Str

=item [AgentArns => ArrayRef[Str|Undef]]

=item [Domain => Str]

=item [MountOptions => L<Paws::Datasync::SmbMountOptions>]

=item [Password => Str]

=item [Subdirectory => Str]

=item [User => Str]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateLocationSmb>

Returns: a L<Paws::Datasync::UpdateLocationSmbResponse> instance

Updates some of the parameters of a previously created location for
Server Message Block (SMB) file system access. For information about
creating an SMB location, see create-smb-location.


=head2 UpdateTask

=over

=item TaskArn => Str

=item [CloudWatchLogGroupArn => Str]

=item [Excludes => ArrayRef[L<Paws::Datasync::FilterRule>]]

=item [Name => Str]

=item [Options => L<Paws::Datasync::Options>]

=item [Schedule => L<Paws::Datasync::TaskSchedule>]


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateTask>

Returns: a L<Paws::Datasync::UpdateTaskResponse> instance

Updates the metadata associated with a task.


=head2 UpdateTaskExecution

=over

=item Options => L<Paws::Datasync::Options>

=item TaskExecutionArn => Str


=back

Each argument is described in detail in: L<Paws::Datasync::UpdateTaskExecution>

Returns: a L<Paws::Datasync::UpdateTaskExecutionResponse> instance

Updates execution of a task.

You can modify bandwidth throttling for a task execution that is
running or queued. For more information, see Adjusting Bandwidth
Throttling for a Task Execution
(https://docs.aws.amazon.com/datasync/latest/userguide/working-with-task-executions.html#adjust-bandwidth-throttling).

The only C<Option> that can be modified by C<UpdateTaskExecution> is C<
BytesPerSecond
(https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-BytesPerSecond)
>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAgents(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAgents([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Agents, passing the object as the first parameter, and the string 'Agents' as the second parameter 

If not, it will return a a L<Paws::Datasync::ListAgentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLocations(sub { },[Filters => ArrayRef[L<Paws::Datasync::LocationFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllLocations([Filters => ArrayRef[L<Paws::Datasync::LocationFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Locations, passing the object as the first parameter, and the string 'Locations' as the second parameter 

If not, it will return a a L<Paws::Datasync::ListLocationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::Datasync::ListTagsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTaskExecutions(sub { },[MaxResults => Int, NextToken => Str, TaskArn => Str])

=head2 ListAllTaskExecutions([MaxResults => Int, NextToken => Str, TaskArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TaskExecutions, passing the object as the first parameter, and the string 'TaskExecutions' as the second parameter 

If not, it will return a a L<Paws::Datasync::ListTaskExecutionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTasks(sub { },[Filters => ArrayRef[L<Paws::Datasync::TaskFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllTasks([Filters => ArrayRef[L<Paws::Datasync::TaskFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tasks, passing the object as the first parameter, and the string 'Tasks' as the second parameter 

If not, it will return a a L<Paws::Datasync::ListTasksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


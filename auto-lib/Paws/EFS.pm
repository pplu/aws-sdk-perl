package Paws::EFS;
  use Moose;
  sub service { 'elasticfilesystem' }
  sub signing_name { 'elasticfilesystem' }
  sub version { '2015-02-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateFileSystem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::CreateFileSystem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMountTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::CreateMountTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::CreateTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFileSystem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DeleteFileSystem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMountTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DeleteMountTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DeleteTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFileSystems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DescribeFileSystems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMountTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DescribeMountTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMountTargetSecurityGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DescribeMountTargetSecurityGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DescribeTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyMountTargetSecurityGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::ModifyMountTargetSecurityGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFileSystem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::UpdateFileSystem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllFileSystems {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFileSystems(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->DescribeFileSystems(@_, Marker => $next_result->NextMarker);
        push @{ $result->FileSystems }, @{ $next_result->FileSystems };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'FileSystems') foreach (@{ $result->FileSystems });
        $result = $self->DescribeFileSystems(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'FileSystems') foreach (@{ $result->FileSystems });
    }

    return undef
  }
  sub DescribeAllMountTargets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeMountTargets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->DescribeMountTargets(@_, Marker => $next_result->NextMarker);
        push @{ $result->MountTargets }, @{ $next_result->MountTargets };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'MountTargets') foreach (@{ $result->MountTargets });
        $result = $self->DescribeMountTargets(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'MountTargets') foreach (@{ $result->MountTargets });
    }

    return undef
  }
  sub DescribeAllTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->DescribeTags(@_, Marker => $next_result->NextMarker);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->DescribeTags(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }


  sub operations { qw/CreateFileSystem CreateMountTarget CreateTags DeleteFileSystem DeleteMountTarget DeleteTags DescribeFileSystems DescribeMountTargets DescribeMountTargetSecurityGroups DescribeTags ModifyMountTargetSecurityGroups UpdateFileSystem / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS - Perl Interface to AWS Amazon Elastic File System

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('EFS');
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

Amazon Elastic File System

Amazon Elastic File System (Amazon EFS) provides simple, scalable file
storage for use with Amazon EC2 instances in the AWS Cloud. With Amazon
EFS, storage capacity is elastic, growing and shrinking automatically
as you add and remove files, so your applications have the storage they
need, when they need it. For more information, see the User Guide
(http://docs.aws.amazon.com/efs/latest/ug/api-reference.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01>


=head1 METHODS

=head2 CreateFileSystem

=over

=item CreationToken => Str

=item [Encrypted => Bool]

=item [KmsKeyId => Str]

=item [PerformanceMode => Str]

=item [ProvisionedThroughputInMibps => Num]

=item [ThroughputMode => Str]


=back

Each argument is described in detail in: L<Paws::EFS::CreateFileSystem>

Returns: a L<Paws::EFS::FileSystemDescription> instance

Creates a new, empty file system. The operation requires a creation
token in the request that Amazon EFS uses to ensure idempotent creation
(calling the operation with same creation token has no effect). If a
file system does not currently exist that is owned by the caller's AWS
account with the specified creation token, this operation does the
following:

=over

=item *

Creates a new, empty file system. The file system will have an Amazon
EFS assigned ID, and an initial lifecycle state C<creating>.

=item *

Returns with the description of the created file system.

=back

Otherwise, this operation returns a C<FileSystemAlreadyExists> error
with the ID of the existing file system.

For basic use cases, you can use a randomly generated UUID for the
creation token.

The idempotent operation allows you to retry a C<CreateFileSystem> call
without risk of creating an extra file system. This can happen when an
initial call fails in a way that leaves it uncertain whether or not a
file system was actually created. An example might be that a transport
level timeout occurred or your connection was reset. As long as you use
the same creation token, if the initial call had succeeded in creating
a file system, the client can learn of its existence from the
C<FileSystemAlreadyExists> error.

The C<CreateFileSystem> call returns while the file system's lifecycle
state is still C<creating>. You can check the file system creation
status by calling the DescribeFileSystems operation, which among other
things returns the file system state.

This operation also takes an optional C<PerformanceMode> parameter that
you choose for your file system. We recommend C<generalPurpose>
performance mode for most file systems. File systems using the C<maxIO>
performance mode can scale to higher levels of aggregate throughput and
operations per second with a tradeoff of slightly higher latencies for
most file operations. The performance mode can't be changed after the
file system has been created. For more information, see Amazon EFS:
Performance Modes
(http://docs.aws.amazon.com/efs/latest/ug/performance.html#performancemodes.html).

After the file system is fully created, Amazon EFS sets its lifecycle
state to C<available>, at which point you can create one or more mount
targets for the file system in your VPC. For more information, see
CreateMountTarget. You mount your Amazon EFS file system on an EC2
instances in your VPC via the mount target. For more information, see
Amazon EFS: How it Works
(http://docs.aws.amazon.com/efs/latest/ug/how-it-works.html).

This operation requires permissions for the
C<elasticfilesystem:CreateFileSystem> action.


=head2 CreateMountTarget

=over

=item FileSystemId => Str

=item SubnetId => Str

=item [IpAddress => Str]

=item [SecurityGroups => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EFS::CreateMountTarget>

Returns: a L<Paws::EFS::MountTargetDescription> instance

Creates a mount target for a file system. You can then mount the file
system on EC2 instances via the mount target.

You can create one mount target in each Availability Zone in your VPC.
All EC2 instances in a VPC within a given Availability Zone share a
single mount target for a given file system. If you have multiple
subnets in an Availability Zone, you create a mount target in one of
the subnets. EC2 instances do not need to be in the same subnet as the
mount target in order to access their file system. For more
information, see Amazon EFS: How it Works
(http://docs.aws.amazon.com/efs/latest/ug/how-it-works.html).

In the request, you also specify a file system ID for which you are
creating the mount target and the file system's lifecycle state must be
C<available>. For more information, see DescribeFileSystems.

In the request, you also provide a subnet ID, which determines the
following:

=over

=item *

VPC in which Amazon EFS creates the mount target

=item *

Availability Zone in which Amazon EFS creates the mount target

=item *

IP address range from which Amazon EFS selects the IP address of the
mount target (if you don't specify an IP address in the request)

=back

After creating the mount target, Amazon EFS returns a response that
includes, a C<MountTargetId> and an C<IpAddress>. You use this IP
address when mounting the file system in an EC2 instance. You can also
use the mount target's DNS name when mounting the file system. The EC2
instance on which you mount the file system via the mount target can
resolve the mount target's DNS name to its IP address. For more
information, see How it Works: Implementation Overview
(http://docs.aws.amazon.com/efs/latest/ug/how-it-works.html#how-it-works-implementation).

Note that you can create mount targets for a file system in only one
VPC, and there can be only one mount target per Availability Zone. That
is, if the file system already has one or more mount targets created
for it, the subnet specified in the request to add another mount target
must meet the following requirements:

=over

=item *

Must belong to the same VPC as the subnets of the existing mount
targets

=item *

Must not be in the same Availability Zone as any of the subnets of the
existing mount targets

=back

If the request satisfies the requirements, Amazon EFS does the
following:

=over

=item *

Creates a new mount target in the specified subnet.

=item *

Also creates a new network interface in the subnet as follows:

=over

=item *

If the request provides an C<IpAddress>, Amazon EFS assigns that IP
address to the network interface. Otherwise, Amazon EFS assigns a free
address in the subnet (in the same way that the Amazon EC2
C<CreateNetworkInterface> call does when a request does not specify a
primary private IP address).

=item *

If the request provides C<SecurityGroups>, this network interface is
associated with those security groups. Otherwise, it belongs to the
default security group for the subnet's VPC.

=item *

Assigns the description C<Mount target I<fsmt-id> for file system
I<fs-id> > where C< I<fsmt-id> > is the mount target ID, and C<
I<fs-id> > is the C<FileSystemId>.

=item *

Sets the C<requesterManaged> property of the network interface to
C<true>, and the C<requesterId> value to C<EFS>.

=back

Each Amazon EFS mount target has one corresponding requester-managed
EC2 network interface. After the network interface is created, Amazon
EFS sets the C<NetworkInterfaceId> field in the mount target's
description to the network interface ID, and the C<IpAddress> field to
its address. If network interface creation fails, the entire
C<CreateMountTarget> operation fails.

=back

The C<CreateMountTarget> call returns only after creating the network
interface, but while the mount target state is still C<creating>, you
can check the mount target creation status by calling the
DescribeMountTargets operation, which among other things returns the
mount target state.

We recommend you create a mount target in each of the Availability
Zones. There are cost considerations for using a file system in an
Availability Zone through a mount target created in another
Availability Zone. For more information, see Amazon EFS
(http://aws.amazon.com/efs/). In addition, by always using a mount
target local to the instance's Availability Zone, you eliminate a
partial failure scenario. If the Availability Zone in which your mount
target is created goes down, then you won't be able to access your file
system through that mount target.

This operation requires permissions for the following action on the
file system:

=over

=item *

C<elasticfilesystem:CreateMountTarget>

=back

This operation also requires permissions for the following Amazon EC2
actions:

=over

=item *

C<ec2:DescribeSubnets>

=item *

C<ec2:DescribeNetworkInterfaces>

=item *

C<ec2:CreateNetworkInterface>

=back



=head2 CreateTags

=over

=item FileSystemId => Str

=item Tags => ArrayRef[L<Paws::EFS::Tag>]


=back

Each argument is described in detail in: L<Paws::EFS::CreateTags>

Returns: nothing

Creates or overwrites tags associated with a file system. Each tag is a
key-value pair. If a tag key specified in the request already exists on
the file system, this operation overwrites its value with the value
provided in the request. If you add the C<Name> tag to your file
system, Amazon EFS returns it in the response to the
DescribeFileSystems operation.

This operation requires permission for the
C<elasticfilesystem:CreateTags> action.


=head2 DeleteFileSystem

=over

=item FileSystemId => Str


=back

Each argument is described in detail in: L<Paws::EFS::DeleteFileSystem>

Returns: nothing

Deletes a file system, permanently severing access to its contents.
Upon return, the file system no longer exists and you can't access any
contents of the deleted file system.

You can't delete a file system that is in use. That is, if the file
system has any mount targets, you must first delete them. For more
information, see DescribeMountTargets and DeleteMountTarget.

The C<DeleteFileSystem> call returns while the file system state is
still C<deleting>. You can check the file system deletion status by
calling the DescribeFileSystems operation, which returns a list of file
systems in your account. If you pass file system ID or creation token
for the deleted file system, the DescribeFileSystems returns a C<404
FileSystemNotFound> error.

This operation requires permissions for the
C<elasticfilesystem:DeleteFileSystem> action.


=head2 DeleteMountTarget

=over

=item MountTargetId => Str


=back

Each argument is described in detail in: L<Paws::EFS::DeleteMountTarget>

Returns: nothing

Deletes the specified mount target.

This operation forcibly breaks any mounts of the file system via the
mount target that is being deleted, which might disrupt instances or
applications using those mounts. To avoid applications getting cut off
abruptly, you might consider unmounting any mounts of the mount target,
if feasible. The operation also deletes the associated network
interface. Uncommitted writes may be lost, but breaking a mount target
using this operation does not corrupt the file system itself. The file
system you created remains. You can mount an EC2 instance in your VPC
via another mount target.

This operation requires permissions for the following action on the
file system:

=over

=item *

C<elasticfilesystem:DeleteMountTarget>

=back

The C<DeleteMountTarget> call returns while the mount target state is
still C<deleting>. You can check the mount target deletion by calling
the DescribeMountTargets operation, which returns a list of mount
target descriptions for the given file system.

The operation also requires permissions for the following Amazon EC2
action on the mount target's network interface:

=over

=item *

C<ec2:DeleteNetworkInterface>

=back



=head2 DeleteTags

=over

=item FileSystemId => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::EFS::DeleteTags>

Returns: nothing

Deletes the specified tags from a file system. If the C<DeleteTags>
request includes a tag key that does not exist, Amazon EFS ignores it
and doesn't cause an error. For more information about tags and related
restrictions, see Tag Restrictions
(http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
in the I<AWS Billing and Cost Management User Guide>.

This operation requires permissions for the
C<elasticfilesystem:DeleteTags> action.


=head2 DescribeFileSystems

=over

=item [CreationToken => Str]

=item [FileSystemId => Str]

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::EFS::DescribeFileSystems>

Returns: a L<Paws::EFS::DescribeFileSystemsResponse> instance

Returns the description of a specific Amazon EFS file system if either
the file system C<CreationToken> or the C<FileSystemId> is provided.
Otherwise, it returns descriptions of all file systems owned by the
caller's AWS account in the AWS Region of the endpoint that you're
calling.

When retrieving all file system descriptions, you can optionally
specify the C<MaxItems> parameter to limit the number of descriptions
in a response. If more file system descriptions remain, Amazon EFS
returns a C<NextMarker>, an opaque token, in the response. In this
case, you should send a subsequent request with the C<Marker> request
parameter set to the value of C<NextMarker>.

To retrieve a list of your file system descriptions, this operation is
used in an iterative process, where C<DescribeFileSystems> is called
first without the C<Marker> and then the operation continues to call it
with the C<Marker> parameter set to the value of the C<NextMarker> from
the previous response until the response has no C<NextMarker>.

The implementation may return fewer than C<MaxItems> file system
descriptions while still including a C<NextMarker> value.

The order of file systems returned in the response of one
C<DescribeFileSystems> call and the order of file systems returned
across the responses of a multi-call iteration is unspecified.

This operation requires permissions for the
C<elasticfilesystem:DescribeFileSystems> action.


=head2 DescribeMountTargets

=over

=item [FileSystemId => Str]

=item [Marker => Str]

=item [MaxItems => Int]

=item [MountTargetId => Str]


=back

Each argument is described in detail in: L<Paws::EFS::DescribeMountTargets>

Returns: a L<Paws::EFS::DescribeMountTargetsResponse> instance

Returns the descriptions of all the current mount targets, or a
specific mount target, for a file system. When requesting all of the
current mount targets, the order of mount targets returned in the
response is unspecified.

This operation requires permissions for the
C<elasticfilesystem:DescribeMountTargets> action, on either the file
system ID that you specify in C<FileSystemId>, or on the file system of
the mount target that you specify in C<MountTargetId>.


=head2 DescribeMountTargetSecurityGroups

=over

=item MountTargetId => Str


=back

Each argument is described in detail in: L<Paws::EFS::DescribeMountTargetSecurityGroups>

Returns: a L<Paws::EFS::DescribeMountTargetSecurityGroupsResponse> instance

Returns the security groups currently in effect for a mount target.
This operation requires that the network interface of the mount target
has been created and the lifecycle state of the mount target is not
C<deleted>.

This operation requires permissions for the following actions:

=over

=item *

C<elasticfilesystem:DescribeMountTargetSecurityGroups> action on the
mount target's file system.

=item *

C<ec2:DescribeNetworkInterfaceAttribute> action on the mount target's
network interface.

=back



=head2 DescribeTags

=over

=item FileSystemId => Str

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::EFS::DescribeTags>

Returns: a L<Paws::EFS::DescribeTagsResponse> instance

Returns the tags associated with a file system. The order of tags
returned in the response of one C<DescribeTags> call and the order of
tags returned across the responses of a multi-call iteration (when
using pagination) is unspecified.

This operation requires permissions for the
C<elasticfilesystem:DescribeTags> action.


=head2 ModifyMountTargetSecurityGroups

=over

=item MountTargetId => Str

=item [SecurityGroups => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EFS::ModifyMountTargetSecurityGroups>

Returns: nothing

Modifies the set of security groups in effect for a mount target.

When you create a mount target, Amazon EFS also creates a new network
interface. For more information, see CreateMountTarget. This operation
replaces the security groups in effect for the network interface
associated with a mount target, with the C<SecurityGroups> provided in
the request. This operation requires that the network interface of the
mount target has been created and the lifecycle state of the mount
target is not C<deleted>.

The operation requires permissions for the following actions:

=over

=item *

C<elasticfilesystem:ModifyMountTargetSecurityGroups> action on the
mount target's file system.

=item *

C<ec2:ModifyNetworkInterfaceAttribute> action on the mount target's
network interface.

=back



=head2 UpdateFileSystem

=over

=item FileSystemId => Str

=item [ProvisionedThroughputInMibps => Num]

=item [ThroughputMode => Str]


=back

Each argument is described in detail in: L<Paws::EFS::UpdateFileSystem>

Returns: a L<Paws::EFS::FileSystemDescription> instance

Updates the throughput mode or the amount of provisioned throughput of
an existing file system.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllFileSystems(sub { },[CreationToken => Str, FileSystemId => Str, Marker => Str, MaxItems => Int])

=head2 DescribeAllFileSystems([CreationToken => Str, FileSystemId => Str, Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FileSystems, passing the object as the first parameter, and the string 'FileSystems' as the second parameter 

If not, it will return a a L<Paws::EFS::DescribeFileSystemsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllMountTargets(sub { },[FileSystemId => Str, Marker => Str, MaxItems => Int, MountTargetId => Str])

=head2 DescribeAllMountTargets([FileSystemId => Str, Marker => Str, MaxItems => Int, MountTargetId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MountTargets, passing the object as the first parameter, and the string 'MountTargets' as the second parameter 

If not, it will return a a L<Paws::EFS::DescribeMountTargetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTags(sub { },FileSystemId => Str, [Marker => Str, MaxItems => Int])

=head2 DescribeAllTags(FileSystemId => Str, [Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::EFS::DescribeTagsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


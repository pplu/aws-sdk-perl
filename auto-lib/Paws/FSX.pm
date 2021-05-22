package Paws::FSX;
  use Moose;
  sub service { 'fsx' }
  sub signing_name { 'fsx' }
  sub version { '2018-03-01' }
  sub target_prefix { 'AWSSimbaAPIService_v20180301' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateFileSystemAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::AssociateFileSystemAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelDataRepositoryTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CancelDataRepositoryTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CopyBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CreateBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataRepositoryTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CreateDataRepositoryTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFileSystem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CreateFileSystem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFileSystemFromBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CreateFileSystemFromBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DeleteBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFileSystem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DeleteFileSystem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBackups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DescribeBackups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataRepositoryTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DescribeDataRepositoryTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFileSystemAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DescribeFileSystemAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFileSystems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DescribeFileSystems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateFileSystemAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DisassociateFileSystemAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFileSystem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::UpdateFileSystem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllBackups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeBackups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeBackups(@_, NextToken => $next_result->NextToken);
        push @{ $result->Backups }, @{ $next_result->Backups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Backups') foreach (@{ $result->Backups });
        $result = $self->DescribeBackups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Backups') foreach (@{ $result->Backups });
    }

    return undef
  }
  sub DescribeAllFileSystems {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFileSystems(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFileSystems(@_, NextToken => $next_result->NextToken);
        push @{ $result->FileSystems }, @{ $next_result->FileSystems };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FileSystems') foreach (@{ $result->FileSystems });
        $result = $self->DescribeFileSystems(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FileSystems') foreach (@{ $result->FileSystems });
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


  sub operations { qw/AssociateFileSystemAliases CancelDataRepositoryTask CopyBackup CreateBackup CreateDataRepositoryTask CreateFileSystem CreateFileSystemFromBackup DeleteBackup DeleteFileSystem DescribeBackups DescribeDataRepositoryTasks DescribeFileSystemAliases DescribeFileSystems DisassociateFileSystemAliases ListTagsForResource TagResource UntagResource UpdateFileSystem / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX - Perl Interface to AWS Amazon FSx

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('FSX');
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

Amazon FSx is a fully managed service that makes it easy for storage
and application administrators to launch and use shared file storage.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01>


=head1 METHODS

=head2 AssociateFileSystemAliases

=over

=item Aliases => ArrayRef[Str|Undef]

=item FileSystemId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::AssociateFileSystemAliases>

Returns: a L<Paws::FSX::AssociateFileSystemAliasesResponse> instance

Use this action to associate one or more Domain Name Server (DNS)
aliases with an existing Amazon FSx for Windows File Server file
system. A file systen can have a maximum of 50 DNS aliases associated
with it at any one time. If you try to associate a DNS alias that is
already associated with the file system, FSx takes no action on that
alias in the request. For more information, see Working with DNS
Aliases
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html)
and Walkthrough 5: Using DNS aliases to access your file system
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/walkthrough05-file-system-custom-CNAME.html),
including additional steps you must take to be able to access your file
system using a DNS alias.

The system response shows the DNS aliases that Amazon FSx is attempting
to associate with the file system. Use the API operation to monitor the
status of the aliases Amazon FSx is associating with the file system.


=head2 CancelDataRepositoryTask

=over

=item TaskId => Str


=back

Each argument is described in detail in: L<Paws::FSX::CancelDataRepositoryTask>

Returns: a L<Paws::FSX::CancelDataRepositoryTaskResponse> instance

Cancels an existing Amazon FSx for Lustre data repository task if that
task is in either the C<PENDING> or C<EXECUTING> state. When you cancel
a task, Amazon FSx does the following.

=over

=item *

Any files that FSx has already exported are not reverted.

=item *

FSx continues to export any files that are "in-flight" when the cancel
operation is received.

=item *

FSx does not export any files that have not yet been exported.

=back



=head2 CopyBackup

=over

=item SourceBackupId => Str

=item [ClientRequestToken => Str]

=item [CopyTags => Bool]

=item [KmsKeyId => Str]

=item [SourceRegion => Str]

=item [Tags => ArrayRef[L<Paws::FSX::Tag>]]


=back

Each argument is described in detail in: L<Paws::FSX::CopyBackup>

Returns: a L<Paws::FSX::CopyBackupResponse> instance

Copies an existing backup within the same AWS account to another Region
(cross-Region copy) or within the same Region (in-Region copy). You can
have up to five backup copy requests in progress to a single
destination Region per account.

You can use cross-Region backup copies for cross-region disaster
recovery. You periodically take backups and copy them to another Region
so that in the event of a disaster in the primary Region, you can
restore from backup and recover availability quickly in the other
Region. You can make cross-Region copies only within your AWS
partition.

You can also use backup copies to clone your file data set to another
Region or within the same Region.

You can use the C<SourceRegion> parameter to specify the AWS Region
from which the backup will be copied. For example, if you make the call
from the C<us-west-1> Region and want to copy a backup from the
C<us-east-2> Region, you specify C<us-east-2> in the C<SourceRegion>
parameter to make a cross-Region copy. If you don't specify a Region,
the backup copy is created in the same Region where the request is sent
from (in-Region copy).

For more information on creating backup copies, see Copying backups
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/copy-backups.html)
in the I<Amazon FSx for Windows User Guide> and Copying backups
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/copy-backups.html)
in the I<Amazon FSx for Lustre User Guide>.


=head2 CreateBackup

=over

=item FileSystemId => Str

=item [ClientRequestToken => Str]

=item [Tags => ArrayRef[L<Paws::FSX::Tag>]]


=back

Each argument is described in detail in: L<Paws::FSX::CreateBackup>

Returns: a L<Paws::FSX::CreateBackupResponse> instance

Creates a backup of an existing Amazon FSx file system. Creating
regular backups for your file system is a best practice, enabling you
to restore a file system from a backup if an issue arises with the
original file system.

For Amazon FSx for Lustre file systems, you can create a backup only
for file systems with the following configuration:

=over

=item *

a Persistent deployment type

=item *

is I<not> linked to a data respository.

=back

For more information about backing up Amazon FSx for Lustre file
systems, see Working with FSx for Lustre backups
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html).

For more information about backing up Amazon FSx for Windows file
systems, see Working with FSx for Windows backups
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html).

If a backup with the specified client request token exists, and the
parameters match, this operation returns the description of the
existing backup. If a backup specified client request token exists, and
the parameters don't match, this operation returns
C<IncompatibleParameterError>. If a backup with the specified client
request token doesn't exist, C<CreateBackup> does the following:

=over

=item *

Creates a new Amazon FSx backup with an assigned ID, and an initial
lifecycle state of C<CREATING>.

=item *

Returns the description of the backup.

=back

By using the idempotent operation, you can retry a C<CreateBackup>
operation without the risk of creating an extra backup. This approach
can be useful when an initial call fails in a way that makes it unclear
whether a backup was created. If you use the same client request token
and the initial call created a backup, the operation returns a
successful result because all the parameters are the same.

The C<CreateBackup> operation returns while the backup's lifecycle
state is still C<CREATING>. You can check the backup creation status by
calling the DescribeBackups operation, which returns the backup state
along with other information.


=head2 CreateDataRepositoryTask

=over

=item FileSystemId => Str

=item Report => L<Paws::FSX::CompletionReport>

=item Type => Str

=item [ClientRequestToken => Str]

=item [Paths => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::FSX::Tag>]]


=back

Each argument is described in detail in: L<Paws::FSX::CreateDataRepositoryTask>

Returns: a L<Paws::FSX::CreateDataRepositoryTaskResponse> instance

Creates an Amazon FSx for Lustre data repository task. You use data
repository tasks to perform bulk operations between your Amazon FSx
file system and its linked data repository. An example of a data
repository task is exporting any data and metadata changes, including
POSIX metadata, to files, directories, and symbolic links (symlinks)
from your FSx file system to its linked data repository. A
C<CreateDataRepositoryTask> operation will fail if a data repository is
not linked to the FSx file system. To learn more about data repository
tasks, see Data Repository Tasks
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-repository-tasks.html).
To learn more about linking a data repository to your file system, see
Linking your file system to an S3 bucket
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-fs-linked-data-repo.html).


=head2 CreateFileSystem

=over

=item FileSystemType => Str

=item StorageCapacity => Int

=item SubnetIds => ArrayRef[Str|Undef]

=item [ClientRequestToken => Str]

=item [KmsKeyId => Str]

=item [LustreConfiguration => L<Paws::FSX::CreateFileSystemLustreConfiguration>]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [StorageType => Str]

=item [Tags => ArrayRef[L<Paws::FSX::Tag>]]

=item [WindowsConfiguration => L<Paws::FSX::CreateFileSystemWindowsConfiguration>]


=back

Each argument is described in detail in: L<Paws::FSX::CreateFileSystem>

Returns: a L<Paws::FSX::CreateFileSystemResponse> instance

Creates a new, empty Amazon FSx file system.

If a file system with the specified client request token exists and the
parameters match, C<CreateFileSystem> returns the description of the
existing file system. If a file system specified client request token
exists and the parameters don't match, this call returns
C<IncompatibleParameterError>. If a file system with the specified
client request token doesn't exist, C<CreateFileSystem> does the
following:

=over

=item *

Creates a new, empty Amazon FSx file system with an assigned ID, and an
initial lifecycle state of C<CREATING>.

=item *

Returns the description of the file system.

=back

This operation requires a client request token in the request that
Amazon FSx uses to ensure idempotent creation. This means that calling
the operation multiple times with the same client request token has no
effect. By using the idempotent operation, you can retry a
C<CreateFileSystem> operation without the risk of creating an extra
file system. This approach can be useful when an initial call fails in
a way that makes it unclear whether a file system was created. Examples
are if a transport level timeout occurred, or your connection was
reset. If you use the same client request token and the initial call
created a file system, the client receives success as long as the
parameters are the same.

The C<CreateFileSystem> call returns while the file system's lifecycle
state is still C<CREATING>. You can check the file-system creation
status by calling the DescribeFileSystems operation, which returns the
file system state along with other information.


=head2 CreateFileSystemFromBackup

=over

=item BackupId => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [ClientRequestToken => Str]

=item [KmsKeyId => Str]

=item [LustreConfiguration => L<Paws::FSX::CreateFileSystemLustreConfiguration>]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [StorageType => Str]

=item [Tags => ArrayRef[L<Paws::FSX::Tag>]]

=item [WindowsConfiguration => L<Paws::FSX::CreateFileSystemWindowsConfiguration>]


=back

Each argument is described in detail in: L<Paws::FSX::CreateFileSystemFromBackup>

Returns: a L<Paws::FSX::CreateFileSystemFromBackupResponse> instance

Creates a new Amazon FSx file system from an existing Amazon FSx
backup.

If a file system with the specified client request token exists and the
parameters match, this operation returns the description of the file
system. If a client request token specified by the file system exists
and the parameters don't match, this call returns
C<IncompatibleParameterError>. If a file system with the specified
client request token doesn't exist, this operation does the following:

=over

=item *

Creates a new Amazon FSx file system from backup with an assigned ID,
and an initial lifecycle state of C<CREATING>.

=item *

Returns the description of the file system.

=back

Parameters like Active Directory, default share name, automatic backup,
and backup settings default to the parameters of the file system that
was backed up, unless overridden. You can explicitly supply other
settings.

By using the idempotent operation, you can retry a
C<CreateFileSystemFromBackup> call without the risk of creating an
extra file system. This approach can be useful when an initial call
fails in a way that makes it unclear whether a file system was created.
Examples are if a transport level timeout occurred, or your connection
was reset. If you use the same client request token and the initial
call created a file system, the client receives success as long as the
parameters are the same.

The C<CreateFileSystemFromBackup> call returns while the file system's
lifecycle state is still C<CREATING>. You can check the file-system
creation status by calling the DescribeFileSystems operation, which
returns the file system state along with other information.


=head2 DeleteBackup

=over

=item BackupId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::DeleteBackup>

Returns: a L<Paws::FSX::DeleteBackupResponse> instance

Deletes an Amazon FSx backup, deleting its contents. After deletion,
the backup no longer exists, and its data is gone.

The C<DeleteBackup> call returns instantly. The backup will not show up
in later C<DescribeBackups> calls.

The data in a deleted backup is also deleted and can't be recovered by
any means.


=head2 DeleteFileSystem

=over

=item FileSystemId => Str

=item [ClientRequestToken => Str]

=item [LustreConfiguration => L<Paws::FSX::DeleteFileSystemLustreConfiguration>]

=item [WindowsConfiguration => L<Paws::FSX::DeleteFileSystemWindowsConfiguration>]


=back

Each argument is described in detail in: L<Paws::FSX::DeleteFileSystem>

Returns: a L<Paws::FSX::DeleteFileSystemResponse> instance

Deletes a file system, deleting its contents. After deletion, the file
system no longer exists, and its data is gone. Any existing automatic
backups will also be deleted.

By default, when you delete an Amazon FSx for Windows File Server file
system, a final backup is created upon deletion. This final backup is
not subject to the file system's retention policy, and must be manually
deleted.

The C<DeleteFileSystem> action returns while the file system has the
C<DELETING> status. You can check the file system deletion status by
calling the DescribeFileSystems action, which returns a list of file
systems in your account. If you pass the file system ID for a deleted
file system, the DescribeFileSystems returns a C<FileSystemNotFound>
error.

Deleting an Amazon FSx for Lustre file system will fail with a 400
BadRequest if a data repository task is in a C<PENDING> or C<EXECUTING>
state.

The data in a deleted file system is also deleted and can't be
recovered by any means.


=head2 DescribeBackups

=over

=item [BackupIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::FSX::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::DescribeBackups>

Returns: a L<Paws::FSX::DescribeBackupsResponse> instance

Returns the description of specific Amazon FSx backups, if a
C<BackupIds> value is provided for that backup. Otherwise, it returns
all backups owned by your AWS account in the AWS Region of the endpoint
that you're calling.

When retrieving all backups, you can optionally specify the
C<MaxResults> parameter to limit the number of backups in a response.
If more backups remain, Amazon FSx returns a C<NextToken> value in the
response. In this case, send a later request with the C<NextToken>
request parameter set to the value of C<NextToken> from the last
response.

This action is used in an iterative process to retrieve a list of your
backups. C<DescribeBackups> is called first without a
C<NextToken>value. Then the action continues to be called with the
C<NextToken> parameter set to the value of the last C<NextToken> value
until a response has no C<NextToken>.

When using this action, keep the following in mind:

=over

=item *

The implementation might return fewer than C<MaxResults> file system
descriptions while still including a C<NextToken> value.

=item *

The order of backups returned in the response of one C<DescribeBackups>
call and the order of backups returned across the responses of a
multi-call iteration is unspecified.

=back



=head2 DescribeDataRepositoryTasks

=over

=item [Filters => ArrayRef[L<Paws::FSX::DataRepositoryTaskFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TaskIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::FSX::DescribeDataRepositoryTasks>

Returns: a L<Paws::FSX::DescribeDataRepositoryTasksResponse> instance

Returns the description of specific Amazon FSx for Lustre data
repository tasks, if one or more C<TaskIds> values are provided in the
request, or if filters are used in the request. You can use filters to
narrow the response to include just tasks for specific file systems, or
tasks in a specific lifecycle state. Otherwise, it returns all data
repository tasks owned by your AWS account in the AWS Region of the
endpoint that you're calling.

When retrieving all tasks, you can paginate the response by using the
optional C<MaxResults> parameter to limit the number of tasks returned
in a response. If more tasks remain, Amazon FSx returns a C<NextToken>
value in the response. In this case, send a later request with the
C<NextToken> request parameter set to the value of C<NextToken> from
the last response.


=head2 DescribeFileSystemAliases

=over

=item FileSystemId => Str

=item [ClientRequestToken => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::DescribeFileSystemAliases>

Returns: a L<Paws::FSX::DescribeFileSystemAliasesResponse> instance

Returns the DNS aliases that are associated with the specified Amazon
FSx for Windows File Server file system. A history of all DNS aliases
that have been associated with and disassociated from the file system
is available in the list of AdministrativeAction provided in the
DescribeFileSystems operation response.


=head2 DescribeFileSystems

=over

=item [FileSystemIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::DescribeFileSystems>

Returns: a L<Paws::FSX::DescribeFileSystemsResponse> instance

Returns the description of specific Amazon FSx file systems, if a
C<FileSystemIds> value is provided for that file system. Otherwise, it
returns descriptions of all file systems owned by your AWS account in
the AWS Region of the endpoint that you're calling.

When retrieving all file system descriptions, you can optionally
specify the C<MaxResults> parameter to limit the number of descriptions
in a response. If more file system descriptions remain, Amazon FSx
returns a C<NextToken> value in the response. In this case, send a
later request with the C<NextToken> request parameter set to the value
of C<NextToken> from the last response.

This action is used in an iterative process to retrieve a list of your
file system descriptions. C<DescribeFileSystems> is called first
without a C<NextToken>value. Then the action continues to be called
with the C<NextToken> parameter set to the value of the last
C<NextToken> value until a response has no C<NextToken>.

When using this action, keep the following in mind:

=over

=item *

The implementation might return fewer than C<MaxResults> file system
descriptions while still including a C<NextToken> value.

=item *

The order of file systems returned in the response of one
C<DescribeFileSystems> call and the order of file systems returned
across the responses of a multicall iteration is unspecified.

=back



=head2 DisassociateFileSystemAliases

=over

=item Aliases => ArrayRef[Str|Undef]

=item FileSystemId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::DisassociateFileSystemAliases>

Returns: a L<Paws::FSX::DisassociateFileSystemAliasesResponse> instance

Use this action to disassociate, or remove, one or more Domain Name
Service (DNS) aliases from an Amazon FSx for Windows File Server file
system. If you attempt to disassociate a DNS alias that is not
associated with the file system, Amazon FSx responds with a 400 Bad
Request. For more information, see Working with DNS Aliases
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html).

The system generated response showing the DNS aliases that Amazon FSx
is attempting to disassociate from the file system. Use the API
operation to monitor the status of the aliases Amazon FSx is
disassociating with the file system.


=head2 ListTagsForResource

=over

=item ResourceARN => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FSX::ListTagsForResource>

Returns: a L<Paws::FSX::ListTagsForResourceResponse> instance

Lists tags for an Amazon FSx file systems and backups in the case of
Amazon FSx for Windows File Server.

When retrieving all tags, you can optionally specify the C<MaxResults>
parameter to limit the number of tags in a response. If more tags
remain, Amazon FSx returns a C<NextToken> value in the response. In
this case, send a later request with the C<NextToken> request parameter
set to the value of C<NextToken> from the last response.

This action is used in an iterative process to retrieve a list of your
tags. C<ListTagsForResource> is called first without a
C<NextToken>value. Then the action continues to be called with the
C<NextToken> parameter set to the value of the last C<NextToken> value
until a response has no C<NextToken>.

When using this action, keep the following in mind:

=over

=item *

The implementation might return fewer than C<MaxResults> file system
descriptions while still including a C<NextToken> value.

=item *

The order of tags returned in the response of one
C<ListTagsForResource> call and the order of tags returned across the
responses of a multi-call iteration is unspecified.

=back



=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::FSX::Tag>]


=back

Each argument is described in detail in: L<Paws::FSX::TagResource>

Returns: a L<Paws::FSX::TagResourceResponse> instance

Tags an Amazon FSx resource.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::FSX::UntagResource>

Returns: a L<Paws::FSX::UntagResourceResponse> instance

This action removes a tag from an Amazon FSx resource.


=head2 UpdateFileSystem

=over

=item FileSystemId => Str

=item [ClientRequestToken => Str]

=item [LustreConfiguration => L<Paws::FSX::UpdateFileSystemLustreConfiguration>]

=item [StorageCapacity => Int]

=item [WindowsConfiguration => L<Paws::FSX::UpdateFileSystemWindowsConfiguration>]


=back

Each argument is described in detail in: L<Paws::FSX::UpdateFileSystem>

Returns: a L<Paws::FSX::UpdateFileSystemResponse> instance

Use this operation to update the configuration of an existing Amazon
FSx file system. You can update multiple properties in a single
request.

For Amazon FSx for Windows File Server file systems, you can update the
following properties:

=over

=item *

AutomaticBackupRetentionDays

=item *

DailyAutomaticBackupStartTime

=item *

SelfManagedActiveDirectoryConfiguration

=item *

StorageCapacity

=item *

ThroughputCapacity

=item *

WeeklyMaintenanceStartTime

=back

For Amazon FSx for Lustre file systems, you can update the following
properties:

=over

=item *

AutoImportPolicy

=item *

AutomaticBackupRetentionDays

=item *

DailyAutomaticBackupStartTime

=item *

StorageCapacity

=item *

WeeklyMaintenanceStartTime

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllBackups(sub { },[BackupIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::FSX::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllBackups([BackupIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::FSX::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Backups, passing the object as the first parameter, and the string 'Backups' as the second parameter 

If not, it will return a a L<Paws::FSX::DescribeBackupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFileSystems(sub { },[FileSystemIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllFileSystems([FileSystemIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FileSystems, passing the object as the first parameter, and the string 'FileSystems' as the second parameter 

If not, it will return a a L<Paws::FSX::DescribeFileSystemsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceARN => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceARN => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::FSX::ListTagsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


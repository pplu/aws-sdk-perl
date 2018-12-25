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

  
  sub CreateBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::CreateBackup', @_);
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
  sub DescribeFileSystems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FSX::DescribeFileSystems', @_);
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


  sub operations { qw/CreateBackup CreateFileSystem CreateFileSystemFromBackup DeleteBackup DeleteFileSystem DescribeBackups DescribeFileSystems ListTagsForResource TagResource UntagResource UpdateFileSystem / }

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

=head2 CreateBackup

=over

=item FileSystemId => Str

=item [ClientRequestToken => Str]

=item [Tags => ArrayRef[L<Paws::FSX::Tag>]]


=back

Each argument is described in detail in: L<Paws::FSX::CreateBackup>

Returns: a L<Paws::FSX::CreateBackupResponse> instance

Creates a backup of an existing Amazon FSx for Windows File Server file
system. Creating regular backups for your file system is a best
practice that complements the replication that Amazon FSx for Windows
File Server performs for your file system. It also enables you to
restore from user modification of data.

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

The C<CreateFileSystem> operation returns while the backup's lifecycle
state is still C<CREATING>. You can check the file system creation
status by calling the DescribeBackups operation, which returns the
backup state along with other information.


=head2 CreateFileSystem

=over

=item FileSystemType => Str

=item StorageCapacity => Int

=item SubnetIds => ArrayRef[Str|Undef]

=item [ClientRequestToken => Str]

=item [KmsKeyId => Str]

=item [LustreConfiguration => L<Paws::FSX::CreateFileSystemLustreConfiguration>]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

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

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::FSX::Tag>]]

=item [WindowsConfiguration => L<Paws::FSX::CreateFileSystemWindowsConfiguration>]


=back

Each argument is described in detail in: L<Paws::FSX::CreateFileSystemFromBackup>

Returns: a L<Paws::FSX::CreateFileSystemFromBackupResponse> instance

Creates a new Amazon FSx file system from an existing Amazon FSx for
Windows File Server backup.

If a file system with the specified client request token exists and the
parameters match, this call returns the description of the existing
file system. If a client request token specified by the file system
exists and the parameters don't match, this call returns
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

Deletes an Amazon FSx for Windows File Server backup, deleting its
contents. After deletion, the backup no longer exists, and its data is
gone.

The C<DeleteBackup> call returns instantly. The backup will not show up
in later C<DescribeBackups> calls.

The data in a deleted backup is also deleted and can't be recovered by
any means.


=head2 DeleteFileSystem

=over

=item FileSystemId => Str

=item [ClientRequestToken => Str]

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

Returns the description of specific Amazon FSx for Windows File Server
backups, if a C<BackupIds> value is provided for that backup.
Otherwise, it returns all backups owned by your AWS account in the AWS
Region of the endpoint that you're calling.

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

=item [WindowsConfiguration => L<Paws::FSX::UpdateFileSystemWindowsConfiguration>]


=back

Each argument is described in detail in: L<Paws::FSX::UpdateFileSystem>

Returns: a L<Paws::FSX::UpdateFileSystemResponse> instance

Updates a file system configuration.




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


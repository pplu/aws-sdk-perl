package Paws::Datasync::Options;
  use Moose;
  has Atime => (is => 'ro', isa => 'Str');
  has BytesPerSecond => (is => 'ro', isa => 'Int');
  has Gid => (is => 'ro', isa => 'Str');
  has Mtime => (is => 'ro', isa => 'Str');
  has PosixPermissions => (is => 'ro', isa => 'Str');
  has PreserveDeletedFiles => (is => 'ro', isa => 'Str');
  has PreserveDevices => (is => 'ro', isa => 'Str');
  has Uid => (is => 'ro', isa => 'Str');
  has VerifyMode => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::Options

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::Options object:

  $service_obj->Method(Att1 => { Atime => $value, ..., VerifyMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::Options object:

  $result = $service_obj->Method(...);
  $result->Att1->Atime

=head1 DESCRIPTION

Represents the options that are available to control the behavior of a
StartTaskExecution operation. Behavior includes preserving metadata
such as user ID (UID), group ID (GID), and file permissions, and also
overwriting files in the destination, data integrity verification, and
so on.

A task has a set of default options associated with it. If you don't
specify an option in StartTaskExecution, the default value is used. You
can override the defaults options on each task execution by specifying
an overriding C<Options> value to StartTaskExecution.

=head1 ATTRIBUTES


=head2 Atime => Str

  A file metadata value that shows the last time a file was accessed
(that is, when the file was read or written to). If you set C<Atime> to
BEST_EFFORT, DataSync attempts to preserve the original C<Atime>
attribute on all source files (that is, the version before the
PREPARING phase). However, C<Atime>'s behavior is not fully standard
across platforms, so AWS DataSync can only do this on a best-effort
basis.

Default value: BEST_EFFORT.

BEST_EFFORT: Attempt to preserve the per-file C<Atime> value
(recommended).

NONE: Ignore C<Atime>.

If C<Atime> is set to BEST_EFFORT, C<Mtime> must be set to PRESERVE.

If C<Atime> is set to NONE, C<Mtime> must also be NONE.


=head2 BytesPerSecond => Int

  A value that limits the bandwidth used by AWS DataSync. For example, if
you want AWS DataSync to use a maximum of 1 MB, set this value to
C<1048576> (C<=1024*1024>).


=head2 Gid => Str

  The group ID (GID) of the file's owners.

Default value: INT_VALUE. This preserves the integer value of the ID.

INT_VALUE: Preserve the integer value of user ID (UID) and GID
(recommended).

NONE: Ignore UID and GID.


=head2 Mtime => Str

  A value that indicates the last time that a file was modified (that is,
a file was written to) before the PREPARING phase.

Default value: PRESERVE.

PRESERVE: Preserve original C<Mtime> (recommended)

NONE: Ignore C<Mtime>.

If C<Mtime> is set to PRESERVE, C<Atime> must be set to BEST_EFFORT.

If C<Mtime> is set to NONE, C<Atime> must also be set to NONE.


=head2 PosixPermissions => Str

  A value that determines which users or groups can access a file for a
specific purpose such as reading, writing, or execution of the file.

Default value: PRESERVE.

PRESERVE: Preserve POSIX-style permissions (recommended).

NONE: Ignore permissions.

AWS DataSync can preserve extant permissions of a source location.


=head2 PreserveDeletedFiles => Str

  A value that specifies whether files in the destination that don't
exist in the source file system should be preserved.

Default value: PRESERVE.

PRESERVE: Ignore such destination files (recommended).

REMOVE: Delete destination files that arenE<rsquo>t present in the
source.


=head2 PreserveDevices => Str

  A value that determines whether AWS DataSync should preserve the
metadata of block and character devices in the source file system, and
recreate the files with that device name and metadata on the
destination.

AWS DataSync can't sync the actual contents of such devices, because
they are nonterminal and don't return an end-of-file (EOF) marker.

Default value: NONE.

NONE: Ignore special devices (recommended).

PRESERVE: Preserve character and block device metadata. This option
isn't currently supported for Amazon EFS.


=head2 Uid => Str

  The user ID (UID) of the file's owner.

Default value: INT_VALUE. This preserves the integer value of the ID.

INT_VALUE: Preserve the integer value of UID and group ID (GID)
(recommended).

NONE: Ignore UID and GID.


=head2 VerifyMode => Str

  A value that determines whether a data integrity verification should be
performed at the end of a task execution after all data and metadata
have been transferred.

Default value: POINT_IN_TIME_CONSISTENT.

POINT_IN_TIME_CONSISTENT: Perform verification (recommended).

NONE: Skip verification.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


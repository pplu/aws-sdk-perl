
package Paws::EFS::FileSystemDescription;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has CreationToken => (is => 'ro', isa => 'Str', required => 1);
  has FileSystemId => (is => 'ro', isa => 'Str', required => 1);
  has LifeCycleState => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has NumberOfMountTargets => (is => 'ro', isa => 'Int', required => 1);
  has OwnerId => (is => 'ro', isa => 'Str', required => 1);
  has PerformanceMode => (is => 'ro', isa => 'Str', required => 1);
  has SizeInBytes => (is => 'ro', isa => 'Paws::EFS::FileSystemSize', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::FileSystemDescription

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

Time that the file system was created, in seconds (since
1970-01-01T00:00:00Z).



=head2 B<REQUIRED> CreationToken => Str

Opaque string specified in the request.



=head2 B<REQUIRED> FileSystemId => Str

ID of the file system, assigned by Amazon EFS.



=head2 B<REQUIRED> LifeCycleState => Str

Lifecycle phase of the file system.

Valid values are: C<"creating">, C<"available">, C<"deleting">, C<"deleted">

=head2 Name => Str

You can add tags to a file system, including a C<Name> tag. For more
information, see CreateTags. If the file system has a C<Name> tag,
Amazon EFS returns the value in this field.



=head2 B<REQUIRED> NumberOfMountTargets => Int

Current number of mount targets that the file system has. For more
information, see CreateMountTarget.



=head2 B<REQUIRED> OwnerId => Str

AWS account that created the file system. If the file system was
created by an IAM user, the parent account to which the user belongs is
the owner.



=head2 B<REQUIRED> PerformanceMode => Str

The C<PerformanceMode> of the file system.

Valid values are: C<"generalPurpose">, C<"maxIO">

=head2 B<REQUIRED> SizeInBytes => L<Paws::EFS::FileSystemSize>

Latest known metered size (in bytes) of data stored in the file system,
in bytes, in its C<Value> field, and the time at which that size was
determined in its C<Timestamp> field. The C<Timestamp> value is the
integer number of seconds since 1970-01-01T00:00:00Z. Note that the
value does not represent the size of a consistent snapshot of the file
system, but it is eventually consistent when there are no writes to the
file system. That is, the value will represent actual size only if the
file system is not modified for a period longer than a couple of hours.
Otherwise, the value is not the exact size the file system was at any
instant in time.




=cut


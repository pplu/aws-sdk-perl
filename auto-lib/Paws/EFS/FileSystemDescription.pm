
package Paws::EFS::FileSystemDescription;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has CreationToken => (is => 'ro', isa => 'Str', required => 1);
  has Encrypted => (is => 'ro', isa => 'Bool');
  has FileSystemId => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LifeCycleState => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has NumberOfMountTargets => (is => 'ro', isa => 'Int', required => 1);
  has OwnerId => (is => 'ro', isa => 'Str', required => 1);
  has PerformanceMode => (is => 'ro', isa => 'Str', required => 1);
  has ProvisionedThroughputInMibps => (is => 'ro', isa => 'Num');
  has SizeInBytes => (is => 'ro', isa => 'Paws::EFS::FileSystemSize', required => 1);
  has ThroughputMode => (is => 'ro', isa => 'Str');

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


=head2 Encrypted => Bool

A Boolean value that, if true, indicates that the file system is
encrypted.


=head2 B<REQUIRED> FileSystemId => Str

ID of the file system, assigned by Amazon EFS.


=head2 KmsKeyId => Str

The ID of an AWS Key Management Service (AWS KMS) customer master key
(CMK) that was used to protect the encrypted file system.


=head2 B<REQUIRED> LifeCycleState => Str

Lifecycle phase of the file system.

Valid values are: C<"creating">, C<"available">, C<"updating">, C<"deleting">, C<"deleted">
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
=head2 ProvisionedThroughputInMibps => Num

The throughput, measured in MiB/s, that you want to provision for a
file system. The limit on throughput is 1024 MiB/s. You can get these
limits increased by contacting AWS Support. For more information, see
Amazon EFS Limits That You Can Increase
(http://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits) in
the I<Amazon EFS User Guide.>


=head2 B<REQUIRED> SizeInBytes => L<Paws::EFS::FileSystemSize>

Latest known metered size (in bytes) of data stored in the file system,
in its C<Value> field, and the time at which that size was determined
in its C<Timestamp> field. The C<Timestamp> value is the integer number
of seconds since 1970-01-01T00:00:00Z. The C<SizeInBytes> value doesn't
represent the size of a consistent snapshot of the file system, but it
is eventually consistent when there are no writes to the file system.
That is, C<SizeInBytes> represents actual size only if the file system
is not modified for a period longer than a couple of hours. Otherwise,
the value is not the exact size that the file system was at any point
in time.


=head2 ThroughputMode => Str

The throughput mode for a file system. There are two throughput modes
to choose from for your file system: bursting and provisioned. You can
decrease your file system's throughput in Provisioned Throughput mode
or change between the throughput modes as long as itE<rsquo>s been more
than 24 hours since the last decrease or throughput mode change.

Valid values are: C<"bursting">, C<"provisioned">
=head2 _request_id => Str


=cut



package Paws::EFS::AccessPointDescription;
  use Moose;
  has AccessPointArn => (is => 'ro', isa => 'Str');
  has AccessPointId => (is => 'ro', isa => 'Str');
  has ClientToken => (is => 'ro', isa => 'Str');
  has FileSystemId => (is => 'ro', isa => 'Str');
  has LifeCycleState => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OwnerId => (is => 'ro', isa => 'Str');
  has PosixUser => (is => 'ro', isa => 'Paws::EFS::PosixUser');
  has RootDirectory => (is => 'ro', isa => 'Paws::EFS::RootDirectory');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EFS::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::AccessPointDescription

=head1 ATTRIBUTES


=head2 AccessPointArn => Str

The unique Amazon Resource Name (ARN) associated with the access point.


=head2 AccessPointId => Str

The ID of the access point, assigned by Amazon EFS.


=head2 ClientToken => Str

The opaque string specified in the request to ensure idempotent
creation.


=head2 FileSystemId => Str

The ID of the EFS file system that the access point applies to.


=head2 LifeCycleState => Str

Identifies the lifecycle phase of the access point.

Valid values are: C<"creating">, C<"available">, C<"updating">, C<"deleting">, C<"deleted">, C<"error">
=head2 Name => Str

The name of the access point. This is the value of the C<Name> tag.


=head2 OwnerId => Str

Identified the AWS account that owns the access point resource.


=head2 PosixUser => L<Paws::EFS::PosixUser>

The full POSIX identity, including the user ID, group ID, and secondary
group IDs on the access point that is used for all file operations by
NFS clients using the access point.


=head2 RootDirectory => L<Paws::EFS::RootDirectory>

The directory on the Amazon EFS file system that the access point
exposes as the root directory to NFS clients using the access point.


=head2 Tags => ArrayRef[L<Paws::EFS::Tag>]

The tags associated with the access point, presented as an array of Tag
objects.


=head2 _request_id => Str


=cut


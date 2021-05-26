
package Paws::Datasync::DescribeLocationSmbResponse;
  use Moose;
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Domain => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');
  has MountOptions => (is => 'ro', isa => 'Paws::Datasync::SmbMountOptions');
  has User => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationSmbResponse

=head1 ATTRIBUTES


=head2 AgentArns => ArrayRef[Str|Undef]

The Amazon Resource Name (ARN) of the source SMB file system location
that is created.


=head2 CreationTime => Str

The time that the SMB location was created.


=head2 Domain => Str

The name of the Windows domain that the SMB server belongs to.


=head2 LocationArn => Str

The Amazon resource Name (ARN) of the SMB location that was described.


=head2 LocationUri => Str

The URL of the source SBM location that was described.


=head2 MountOptions => L<Paws::Datasync::SmbMountOptions>

The mount options that are available for DataSync to use to access an
SMB location.


=head2 User => Str

The user who can mount the share, has the permissions to access files
and folders in the SMB share.


=head2 _request_id => Str


=cut

1;
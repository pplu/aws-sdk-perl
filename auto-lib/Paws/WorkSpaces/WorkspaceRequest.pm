package Paws::WorkSpaces::WorkspaceRequest;
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str', required => 1);
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has RootVolumeEncryptionEnabled => (is => 'ro', isa => 'Bool');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::Tag]');
  has UserName => (is => 'ro', isa => 'Str', required => 1);
  has UserVolumeEncryptionEnabled => (is => 'ro', isa => 'Bool');
  has VolumeEncryptionKey => (is => 'ro', isa => 'Str');
  has WorkspaceProperties => (is => 'ro', isa => 'Paws::WorkSpaces::WorkspaceProperties');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::WorkspaceRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::WorkspaceRequest object:

  $service_obj->Method(Att1 => { BundleId => $value, ..., WorkspaceProperties => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::WorkspaceRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->BundleId

=head1 DESCRIPTION

Describes the information used to create a WorkSpace.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BundleId => Str

  The identifier of the bundle for the WorkSpace. You can use
DescribeWorkspaceBundles to list the available bundles.


=head2 B<REQUIRED> DirectoryId => Str

  The identifier of the AWS Directory Service directory for the
WorkSpace. You can use DescribeWorkspaceDirectories to list the
available directories.


=head2 RootVolumeEncryptionEnabled => Bool

  Indicates whether the data stored on the root volume is encrypted.


=head2 Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]

  The tags for the WorkSpace.


=head2 B<REQUIRED> UserName => Str

  The username of the user for the WorkSpace. This username must exist in
the AWS Directory Service directory for the WorkSpace.


=head2 UserVolumeEncryptionEnabled => Bool

  Indicates whether the data stored on the user volume is encrypted.


=head2 VolumeEncryptionKey => Str

  The KMS key used to encrypt data stored on your WorkSpace.


=head2 WorkspaceProperties => L<Paws::WorkSpaces::WorkspaceProperties>

  The WorkSpace properties.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


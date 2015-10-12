package Paws::WorkSpaces::WorkspaceRequest;
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str', required => 1);
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has RootVolumeEncryptionEnabled => (is => 'ro', isa => 'Bool');
  has UserName => (is => 'ro', isa => 'Str', required => 1);
  has UserVolumeEncryptionEnabled => (is => 'ro', isa => 'Bool');
  has VolumeEncryptionKey => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::WorkspaceRequest

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::WorkspaceRequest object:

  $service_obj->Method(Att1 => { BundleId => $value, ..., VolumeEncryptionKey => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::WorkspaceRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->BundleId

=head1 ATTRIBUTES

=head2 B<REQUIRED> BundleId => Str

  

The identifier of the bundle to create the WorkSpace from. You can use
the DescribeWorkspaceBundles operation to obtain a list of the bundles
that are available.










=head2 B<REQUIRED> DirectoryId => Str

  

The identifier of the AWS Directory Service directory to create the
WorkSpace in. You can use the DescribeWorkspaceDirectories operation to
obtain a list of the directories that are available.










=head2 RootVolumeEncryptionEnabled => Bool

  

Specifies whether the data stored on the root volume, or C: drive, is
encrypted.










=head2 B<REQUIRED> UserName => Str

  

The username that the WorkSpace is assigned to. This username must
exist in the AWS Directory Service directory specified by the
C<DirectoryId> member.










=head2 UserVolumeEncryptionEnabled => Bool

  

Specifies whether the data stored on the user volume, or D: drive, is
encrypted.










=head2 VolumeEncryptionKey => Str

  

The KMS key used to encrypt data stored on your WorkSpace.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


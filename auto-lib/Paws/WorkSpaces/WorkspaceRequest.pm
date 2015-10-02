package Paws::WorkSpaces::WorkspaceRequest;
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str', required => 1);
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has RootVolumeEncryptionEnabled => (is => 'ro', isa => 'Bool');
  has UserName => (is => 'ro', isa => 'Str', required => 1);
  has UserVolumeEncryptionEnabled => (is => 'ro', isa => 'Bool');
  has VolumeEncryptionKey => (is => 'ro', isa => 'Str');
1;

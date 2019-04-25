
package Paws::WorkSpaces::CreateWorkspaces;
  use Moose;
  has Workspaces => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::WorkspaceRequest]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkspaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::CreateWorkspacesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateWorkspaces - Arguments for method CreateWorkspaces on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkspaces on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method CreateWorkspaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkspaces.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $CreateWorkspacesResult = $workspaces->CreateWorkspaces(
      Workspaces => [
        {
          BundleId                    => 'MyBundleId',
          DirectoryId                 => 'MyDirectoryId',
          UserName                    => 'MyUserName',      # min: 1, max: 63
          RootVolumeEncryptionEnabled => 1,                 # OPTIONAL
          Tags                        => [
            {
              Key   => 'MyTagKey',                          # min: 1, max: 127
              Value => 'MyTagValue',                        # max: 255; OPTIONAL
            },
            ...
          ],                                                # OPTIONAL
          UserVolumeEncryptionEnabled => 1,                          # OPTIONAL
          VolumeEncryptionKey         => 'MyVolumeEncryptionKey',    # OPTIONAL
          WorkspaceProperties         => {
            ComputeTypeName => 'VALUE'
            , # values: VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO, GRAPHICSPRO; OPTIONAL
            RootVolumeSizeGib => 1,    # OPTIONAL
            RunningMode => 'AUTO_STOP', # values: AUTO_STOP, ALWAYS_ON; OPTIONAL
            RunningModeAutoStopTimeoutInMinutes => 1,    # OPTIONAL
            UserVolumeSizeGib                   => 1,    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $FailedRequests  = $CreateWorkspacesResult->FailedRequests;
    my $PendingRequests = $CreateWorkspacesResult->PendingRequests;

    # Returns a L<Paws::WorkSpaces::CreateWorkspacesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/CreateWorkspaces>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Workspaces => ArrayRef[L<Paws::WorkSpaces::WorkspaceRequest>]

The WorkSpaces to create. You can specify up to 25 WorkSpaces.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkspaces in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


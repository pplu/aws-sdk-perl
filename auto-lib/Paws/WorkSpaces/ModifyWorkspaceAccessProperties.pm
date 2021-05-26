
package Paws::WorkSpaces::ModifyWorkspaceAccessProperties;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has WorkspaceAccessProperties => (is => 'ro', isa => 'Paws::WorkSpaces::WorkspaceAccessProperties', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyWorkspaceAccessProperties');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::ModifyWorkspaceAccessPropertiesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ModifyWorkspaceAccessProperties - Arguments for method ModifyWorkspaceAccessProperties on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyWorkspaceAccessProperties on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method ModifyWorkspaceAccessProperties.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyWorkspaceAccessProperties.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $ModifyWorkspaceAccessPropertiesResult =
      $workspaces->ModifyWorkspaceAccessProperties(
      ResourceId                => 'MyDirectoryId',
      WorkspaceAccessProperties => {
        DeviceTypeAndroid    => 'ALLOW',    # values: ALLOW, DENY; OPTIONAL
        DeviceTypeChromeOs   => 'ALLOW',    # values: ALLOW, DENY; OPTIONAL
        DeviceTypeIos        => 'ALLOW',    # values: ALLOW, DENY; OPTIONAL
        DeviceTypeOsx        => 'ALLOW',    # values: ALLOW, DENY; OPTIONAL
        DeviceTypeWeb        => 'ALLOW',    # values: ALLOW, DENY; OPTIONAL
        DeviceTypeWindows    => 'ALLOW',    # values: ALLOW, DENY; OPTIONAL
        DeviceTypeZeroClient => 'ALLOW',    # values: ALLOW, DENY; OPTIONAL
      },

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/ModifyWorkspaceAccessProperties>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The identifier of the directory.



=head2 B<REQUIRED> WorkspaceAccessProperties => L<Paws::WorkSpaces::WorkspaceAccessProperties>

The device types and operating systems to enable or disable for access.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyWorkspaceAccessProperties in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


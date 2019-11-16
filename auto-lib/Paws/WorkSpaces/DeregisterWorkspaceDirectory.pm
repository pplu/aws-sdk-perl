
package Paws::WorkSpaces::DeregisterWorkspaceDirectory;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterWorkspaceDirectory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DeregisterWorkspaceDirectoryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DeregisterWorkspaceDirectory - Arguments for method DeregisterWorkspaceDirectory on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterWorkspaceDirectory on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DeregisterWorkspaceDirectory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterWorkspaceDirectory.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DeregisterWorkspaceDirectoryResult =
      $workspaces->DeregisterWorkspaceDirectory(
      DirectoryId => 'MyDirectoryId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DeregisterWorkspaceDirectory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The identifier of the directory. If any WorkSpaces are registered to
this directory, you must remove them before you deregister the
directory, or you will receive an OperationNotSupportedException error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterWorkspaceDirectory in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


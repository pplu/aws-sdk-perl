
package Paws::WorkSpaces::ModifyWorkspaceState;
  use Moose;
  has WorkspaceId => (is => 'ro', isa => 'Str', required => 1);
  has WorkspaceState => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyWorkspaceState');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::ModifyWorkspaceStateResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ModifyWorkspaceState - Arguments for method ModifyWorkspaceState on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyWorkspaceState on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method ModifyWorkspaceState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyWorkspaceState.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $ModifyWorkspaceStateResult = $workspaces->ModifyWorkspaceState(
      WorkspaceId    => 'MyWorkspaceId',
      WorkspaceState => 'AVAILABLE',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/ModifyWorkspaceState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkspaceId => Str

The identifier of the WorkSpace.



=head2 B<REQUIRED> WorkspaceState => Str

The WorkSpace state.

Valid values are: C<"AVAILABLE">, C<"ADMIN_MAINTENANCE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyWorkspaceState in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


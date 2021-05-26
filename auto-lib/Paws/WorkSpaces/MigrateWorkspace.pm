
package Paws::WorkSpaces::MigrateWorkspace;
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str', required => 1);
  has SourceWorkspaceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'MigrateWorkspace');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::MigrateWorkspaceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::MigrateWorkspace - Arguments for method MigrateWorkspace on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method MigrateWorkspace on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method MigrateWorkspace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to MigrateWorkspace.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $MigrateWorkspaceResult = $workspaces->MigrateWorkspace(
      BundleId          => 'MyBundleId',
      SourceWorkspaceId => 'MyWorkspaceId',

    );

    # Results:
    my $SourceWorkspaceId = $MigrateWorkspaceResult->SourceWorkspaceId;
    my $TargetWorkspaceId = $MigrateWorkspaceResult->TargetWorkspaceId;

    # Returns a L<Paws::WorkSpaces::MigrateWorkspaceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/MigrateWorkspace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BundleId => Str

The identifier of the target bundle type to migrate the WorkSpace to.



=head2 B<REQUIRED> SourceWorkspaceId => Str

The identifier of the WorkSpace to migrate from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method MigrateWorkspace in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::WorkSpaces::DescribeWorkspaceSnapshots;
  use Moose;
  has WorkspaceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkspaceSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DescribeWorkspaceSnapshotsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspaceSnapshots - Arguments for method DescribeWorkspaceSnapshots on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWorkspaceSnapshots on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DescribeWorkspaceSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWorkspaceSnapshots.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DescribeWorkspaceSnapshotsResult =
      $workspaces->DescribeWorkspaceSnapshots(
      WorkspaceId => 'MyWorkspaceId',

      );

    # Results:
    my $RebuildSnapshots = $DescribeWorkspaceSnapshotsResult->RebuildSnapshots;
    my $RestoreSnapshots = $DescribeWorkspaceSnapshotsResult->RestoreSnapshots;

    # Returns a L<Paws::WorkSpaces::DescribeWorkspaceSnapshotsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DescribeWorkspaceSnapshots>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkspaceId => Str

The identifier of the WorkSpace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWorkspaceSnapshots in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::WorkSpaces::DescribeWorkspacesConnectionStatus;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WorkspaceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkspacesConnectionStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DescribeWorkspacesConnectionStatusResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspacesConnectionStatus - Arguments for method DescribeWorkspacesConnectionStatus on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWorkspacesConnectionStatus on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DescribeWorkspacesConnectionStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWorkspacesConnectionStatus.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DescribeWorkspacesConnectionStatusResult =
      $workspaces->DescribeWorkspacesConnectionStatus(
      NextToken    => 'MyPaginationToken',         # OPTIONAL
      WorkspaceIds => [ 'MyWorkspaceId', ... ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeWorkspacesConnectionStatusResult->NextToken;
    my $WorkspacesConnectionStatus =
      $DescribeWorkspacesConnectionStatusResult->WorkspacesConnectionStatus;

# Returns a L<Paws::WorkSpaces::DescribeWorkspacesConnectionStatusResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DescribeWorkspacesConnectionStatus>

=head1 ATTRIBUTES


=head2 NextToken => Str

If you received a C<NextToken> from a previous call that was paginated,
provide this token to receive the next set of results.



=head2 WorkspaceIds => ArrayRef[Str|Undef]

The identifiers of the WorkSpaces. You can specify up to 25 WorkSpaces.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWorkspacesConnectionStatus in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


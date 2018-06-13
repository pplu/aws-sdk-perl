
package Paws::WorkSpaces::TerminateWorkspaces;
  use Moose;
  has TerminateWorkspaceRequests => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::TerminateRequest]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateWorkspaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::TerminateWorkspacesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::TerminateWorkspaces - Arguments for method TerminateWorkspaces on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TerminateWorkspaces on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method TerminateWorkspaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TerminateWorkspaces.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $TerminateWorkspacesResult = $workspaces->TerminateWorkspaces(
      TerminateWorkspaceRequests => [
        {
          WorkspaceId => 'MyWorkspaceId',

        },
        ...
      ],

    );

    # Results:
    my $FailedRequests = $TerminateWorkspacesResult->FailedRequests;

    # Returns a L<Paws::WorkSpaces::TerminateWorkspacesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/TerminateWorkspaces>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TerminateWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::TerminateRequest>]

The WorkSpaces to terminate. You can specify up to 25 WorkSpaces.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TerminateWorkspaces in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


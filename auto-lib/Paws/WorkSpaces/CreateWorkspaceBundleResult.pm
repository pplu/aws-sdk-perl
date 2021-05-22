
package Paws::WorkSpaces::CreateWorkspaceBundleResult;
  use Moose;
  has WorkspaceBundle => (is => 'ro', isa => 'Paws::WorkSpaces::WorkspaceBundle');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateWorkspaceBundleResult

=head1 ATTRIBUTES


=head2 WorkspaceBundle => L<Paws::WorkSpaces::WorkspaceBundle>




=head2 _request_id => Str


=cut

1;
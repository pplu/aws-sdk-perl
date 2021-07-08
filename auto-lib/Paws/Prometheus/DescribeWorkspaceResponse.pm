
package Paws::Prometheus::DescribeWorkspaceResponse;
  use Moose;
  has Workspace => (is => 'ro', isa => 'Paws::Prometheus::WorkspaceDescription', traits => ['NameInRequest'], request_name => 'workspace', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::DescribeWorkspaceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Workspace => L<Paws::Prometheus::WorkspaceDescription>

The properties of the selected workspace.


=head2 _request_id => Str


=cut


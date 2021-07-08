
package Paws::Prometheus::ListWorkspacesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Workspaces => (is => 'ro', isa => 'ArrayRef[Paws::Prometheus::WorkspaceSummary]', traits => ['NameInRequest'], request_name => 'workspaces', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::ListWorkspacesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token to use when requesting the next page in this list.


=head2 B<REQUIRED> Workspaces => ArrayRef[L<Paws::Prometheus::WorkspaceSummary>]

The list of existing workspaces, including those undergoing creation or
deletion.


=head2 _request_id => Str


=cut


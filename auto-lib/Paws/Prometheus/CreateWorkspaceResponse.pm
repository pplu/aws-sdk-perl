
package Paws::Prometheus::CreateWorkspaceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Status => (is => 'ro', isa => 'Paws::Prometheus::WorkspaceStatus', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::CreateWorkspaceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the workspace that was just created.


=head2 B<REQUIRED> Status => L<Paws::Prometheus::WorkspaceStatus>

The status of the workspace that was just created (usually CREATING).


=head2 B<REQUIRED> WorkspaceId => Str

The generated ID of the workspace that was just created.


=head2 _request_id => Str


=cut


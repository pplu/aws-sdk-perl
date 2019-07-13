
package Paws::Datasync::ListAgentsResponse;
  use Moose;
  has Agents => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::AgentListEntry]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::ListAgentsResponse

=head1 ATTRIBUTES


=head2 Agents => ArrayRef[L<Paws::Datasync::AgentListEntry>]

A list of agents in your account.


=head2 NextToken => Str

An opaque string that indicates the position at which to begin
returning the next list of agents.


=head2 _request_id => Str


=cut

1;
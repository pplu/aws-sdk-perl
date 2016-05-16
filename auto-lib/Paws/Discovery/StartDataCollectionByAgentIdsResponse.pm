
package Paws::Discovery::StartDataCollectionByAgentIdsResponse;
  use Moose;
  has AgentsConfigStatus => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::AgentConfigStatus]', traits => ['Unwrapped'], xmlname => 'agentsConfigStatus' );


### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StartDataCollectionByAgentIdsResponse

=head1 ATTRIBUTES


=head2 AgentsConfigStatus => ArrayRef[L<Paws::Discovery::AgentConfigStatus>]

Information about agents that were instructed to start collecting data.
Information includes the agent ID, a description of the operation
performed, and whether or not the agent configuration was updated.




=cut

1;
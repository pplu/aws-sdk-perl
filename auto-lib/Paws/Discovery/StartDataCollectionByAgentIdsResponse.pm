
package Paws::Discovery::StartDataCollectionByAgentIdsResponse;
  use Moose;
  has AgentsConfigurationStatus => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::AgentConfigurationStatus]', traits => ['NameInRequest'], request_name => 'agentsConfigurationStatus' );


### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StartDataCollectionByAgentIdsResponse

=head1 ATTRIBUTES


=head2 AgentsConfigurationStatus => ArrayRef[L<Paws::Discovery::AgentConfigurationStatus>]

Information about agents that were instructed to start collecting data.
Information includes the agent ID, a description of the operation
performed, and whether or not the agent configuration was updated.




=cut

1;
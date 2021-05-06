
package Paws::Discovery::StopDataCollectionByAgentIdsResponse;
  use Moose;
  has AgentsConfigurationStatus => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::AgentConfigurationStatus]', traits => ['NameInRequest'], request_name => 'agentsConfigurationStatus' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StopDataCollectionByAgentIdsResponse

=head1 ATTRIBUTES


=head2 AgentsConfigurationStatus => ArrayRef[L<Paws::Discovery::AgentConfigurationStatus>]

Information about the agents or connector that were instructed to stop
collecting data. Information includes the agent/connector ID, a
description of the operation performed, and whether the agent/connector
configuration was updated.


=head2 _request_id => Str


=cut

1;
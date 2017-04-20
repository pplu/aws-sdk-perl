
package Paws::Discovery::StartDataCollectionByAgentIdsResponse;
  use Moose;
  has AgentsConfigurationStatus => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::AgentConfigurationStatus]', traits => ['NameInRequest'], request_name => 'agentsConfigurationStatus' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StartDataCollectionByAgentIdsResponse

=head1 ATTRIBUTES


=head2 AgentsConfigurationStatus => ArrayRef[L<Paws::Discovery::AgentConfigurationStatus>]

Information about agents or the connector that were instructed to start
collecting data. Information includes the agent/connector ID, a
description of the operation performed, and whether the agent/connector
configuration was updated.


=head2 _request_id => Str


=cut

1;
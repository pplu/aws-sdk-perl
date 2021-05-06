
package Paws::Discovery::GetDiscoverySummaryResponse;
  use Moose;
  has AgentSummary => (is => 'ro', isa => 'Paws::Discovery::CustomerAgentInfo', traits => ['NameInRequest'], request_name => 'agentSummary' );
  has Applications => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'applications' );
  has ConnectorSummary => (is => 'ro', isa => 'Paws::Discovery::CustomerConnectorInfo', traits => ['NameInRequest'], request_name => 'connectorSummary' );
  has Servers => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'servers' );
  has ServersMappedToApplications => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'serversMappedToApplications' );
  has ServersMappedtoTags => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'serversMappedtoTags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::GetDiscoverySummaryResponse

=head1 ATTRIBUTES


=head2 AgentSummary => L<Paws::Discovery::CustomerAgentInfo>

Details about discovered agents, including agent status and health.


=head2 Applications => Int

The number of applications discovered.


=head2 ConnectorSummary => L<Paws::Discovery::CustomerConnectorInfo>

Details about discovered connectors, including connector status and
health.


=head2 Servers => Int

The number of servers discovered.


=head2 ServersMappedToApplications => Int

The number of servers mapped to applications.


=head2 ServersMappedtoTags => Int

The number of servers mapped to tags.


=head2 _request_id => Str


=cut

1;
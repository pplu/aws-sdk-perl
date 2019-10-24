# Generated from json/callresult_class.tt

package Paws::Discovery::GetDiscoverySummaryResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Discovery::Types qw/Discovery_CustomerAgentInfo Discovery_CustomerConnectorInfo/;
  has AgentSummary => (is => 'ro', isa => Discovery_CustomerAgentInfo);
  has Applications => (is => 'ro', isa => Int);
  has ConnectorSummary => (is => 'ro', isa => Discovery_CustomerConnectorInfo);
  has Servers => (is => 'ro', isa => Int);
  has ServersMappedToApplications => (is => 'ro', isa => Int);
  has ServersMappedtoTags => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServersMappedtoTags' => {
                                          'type' => 'Int'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ServersMappedToApplications' => {
                                                  'type' => 'Int'
                                                },
               'Applications' => {
                                   'type' => 'Int'
                                 },
               'ConnectorSummary' => {
                                       'class' => 'Paws::Discovery::CustomerConnectorInfo',
                                       'type' => 'Discovery_CustomerConnectorInfo'
                                     },
               'AgentSummary' => {
                                   'class' => 'Paws::Discovery::CustomerAgentInfo',
                                   'type' => 'Discovery_CustomerAgentInfo'
                                 },
               'Servers' => {
                              'type' => 'Int'
                            }
             },
  'NameInRequest' => {
                       'ServersMappedtoTags' => 'serversMappedtoTags',
                       'ServersMappedToApplications' => 'serversMappedToApplications',
                       'Applications' => 'applications',
                       'ConnectorSummary' => 'connectorSummary',
                       'AgentSummary' => 'agentSummary',
                       'Servers' => 'servers'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Discovery::GetDiscoverySummaryResponse

=head1 ATTRIBUTES


=head2 AgentSummary => Discovery_CustomerAgentInfo

Details about discovered agents, including agent status and health.


=head2 Applications => Int

The number of applications discovered.


=head2 ConnectorSummary => Discovery_CustomerConnectorInfo

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
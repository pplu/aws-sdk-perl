# Generated from json/callresult_class.tt

package Paws::Discovery::StartDataCollectionByAgentIdsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Discovery::Types qw/Discovery_AgentConfigurationStatus/;
  has AgentsConfigurationStatus => (is => 'ro', isa => ArrayRef[Discovery_AgentConfigurationStatus]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AgentsConfigurationStatus' => {
                                                'class' => 'Paws::Discovery::AgentConfigurationStatus',
                                                'type' => 'ArrayRef[Discovery_AgentConfigurationStatus]'
                                              }
             },
  'NameInRequest' => {
                       'AgentsConfigurationStatus' => 'agentsConfigurationStatus'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StartDataCollectionByAgentIdsResponse

=head1 ATTRIBUTES


=head2 AgentsConfigurationStatus => ArrayRef[Discovery_AgentConfigurationStatus]

Information about agents or the connector that were instructed to start
collecting data. Information includes the agent/connector ID, a
description of the operation performed, and whether the agent/connector
configuration was updated.


=head2 _request_id => Str


=cut

1;
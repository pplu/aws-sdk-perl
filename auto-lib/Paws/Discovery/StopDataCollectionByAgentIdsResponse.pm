# Generated from json/callresult_class.tt

package Paws::Discovery::StopDataCollectionByAgentIdsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Discovery::Types qw/Discovery_AgentConfigurationStatus/;
  has AgentsConfigurationStatus => (is => 'ro', isa => ArrayRef[Discovery_AgentConfigurationStatus]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AgentsConfigurationStatus' => {
                                                'class' => 'Paws::Discovery::AgentConfigurationStatus',
                                                'type' => 'ArrayRef[Discovery_AgentConfigurationStatus]'
                                              },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::Discovery::StopDataCollectionByAgentIdsResponse

=head1 ATTRIBUTES


=head2 AgentsConfigurationStatus => ArrayRef[Discovery_AgentConfigurationStatus]

Information about the agents or connector that were instructed to stop
collecting data. Information includes the agent/connector ID, a
description of the operation performed, and whether the agent/connector
configuration was updated.


=head2 _request_id => Str


=cut

1;
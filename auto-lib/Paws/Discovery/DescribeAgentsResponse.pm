# Generated from json/callresult_class.tt

package Paws::Discovery::DescribeAgentsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Discovery::Types qw/Discovery_AgentInfo/;
  has AgentsInfo => (is => 'ro', isa => ArrayRef[Discovery_AgentInfo]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AgentsInfo' => {
                                 'class' => 'Paws::Discovery::AgentInfo',
                                 'type' => 'ArrayRef[Discovery_AgentInfo]'
                               }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'AgentsInfo' => 'agentsInfo'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeAgentsResponse

=head1 ATTRIBUTES


=head2 AgentsInfo => ArrayRef[Discovery_AgentInfo]

Lists agents or the Connector by ID or lists all agents/Connectors
associated with your user account if you did not specify an
agent/Connector ID. The output includes agent/Connector IDs, IP
addresses, media access control (MAC) addresses, agent/Connector
health, host name where the agent/Connector resides, and the version
number of each agent/Connector.


=head2 NextToken => Str

Token to retrieve the next set of results. For example, if you
specified 100 IDs for C<DescribeAgentsRequest$agentIds> but set
C<DescribeAgentsRequest$maxResults> to 10, you received a set of 10
results along with this token. Use this token in the next query to
retrieve the next set of 10.


=head2 _request_id => Str


=cut

1;
# Generated from json/callresult_class.tt

package Paws::Datasync::DescribeAgentResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Datasync::Types qw/Datasync_PrivateLinkConfig/;
  has AgentArn => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str);
  has EndpointType => (is => 'ro', isa => Str);
  has LastConnectionTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has PrivateLinkConfig => (is => 'ro', isa => Datasync_PrivateLinkConfig);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EndpointType' => {
                                   'type' => 'Str'
                                 },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'PrivateLinkConfig' => {
                                        'class' => 'Paws::Datasync::PrivateLinkConfig',
                                        'type' => 'Datasync_PrivateLinkConfig'
                                      },
               'LastConnectionTime' => {
                                         'type' => 'Str'
                                       },
               'AgentArn' => {
                               'type' => 'Str'
                             },
               'CreationTime' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeAgentResponse

=head1 ATTRIBUTES


=head2 AgentArn => Str

The Amazon Resource Name (ARN) of the agent.


=head2 CreationTime => Str

The time that the agent was activated (that is, created in your
account).


=head2 EndpointType => Str

The type of endpoint that your agent is connected to. If the endpoint
is a VPC endpoint, the agent is not accessible over the public
Internet.

Valid values are: C<"PUBLIC">, C<"PRIVATE_LINK">
=head2 LastConnectionTime => Str

The time that the agent last connected to DataSyc.


=head2 Name => Str

The name of the agent.


=head2 PrivateLinkConfig => Datasync_PrivateLinkConfig

The subnet and the security group that DataSync used to access a VPC
endpoint.


=head2 Status => Str

The status of the agent. If the status is ONLINE, then the agent is
configured properly and is available to use. The Running status is the
normal running status for an agent. If the status is OFFLINE, the
agent's VM is turned off or the agent is in an unhealthy state. When
the issue that caused the unhealthy state is resolved, the agent
returns to ONLINE status.

Valid values are: C<"ONLINE">, C<"OFFLINE">
=head2 _request_id => Str


=cut

1;
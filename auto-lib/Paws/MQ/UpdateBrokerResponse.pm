
package Paws::MQ::UpdateBrokerResponse;
  use Moo;
  use Types::Standard qw/Str Bool Undef ArrayRef/;
  use Paws::MQ::Types qw/MQ_ConfigurationId MQ_Logs/;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => Bool);
  has BrokerId => (is => 'ro', isa => Str);
  has Configuration => (is => 'ro', isa => MQ_ConfigurationId);
  has EngineVersion => (is => 'ro', isa => Str);
  has HostInstanceType => (is => 'ro', isa => Str);
  has Logs => (is => 'ro', isa => MQ_Logs);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AutoMinorVersionUpgrade' => {
                                              'type' => 'Bool'
                                            },
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   },
               'Configuration' => {
                                    'class' => 'Paws::MQ::ConfigurationId',
                                    'type' => 'MQ_ConfigurationId'
                                  },
               'HostInstanceType' => {
                                       'type' => 'Str'
                                     },
               'BrokerId' => {
                               'type' => 'Str'
                             },
               'Logs' => {
                           'type' => 'MQ_Logs',
                           'class' => 'Paws::MQ::Logs'
                         },
               'EngineVersion' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'Configuration' => 'configuration',
                       'SecurityGroups' => 'securityGroups',
                       'AutoMinorVersionUpgrade' => 'autoMinorVersionUpgrade',
                       'EngineVersion' => 'engineVersion',
                       'Logs' => 'logs',
                       'BrokerId' => 'brokerId',
                       'HostInstanceType' => 'hostInstanceType'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::UpdateBrokerResponse

=head1 ATTRIBUTES


=head2 AutoMinorVersionUpgrade => Bool

The new value of automatic upgrades to new minor version for brokers.


=head2 BrokerId => Str

Required. The unique ID that Amazon MQ generates for the broker.


=head2 Configuration => MQ_ConfigurationId

The ID of the updated configuration.


=head2 EngineVersion => Str

The version of the broker engine to upgrade to. For a list of supported
engine versions, see
https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html


=head2 HostInstanceType => Str

The host instance type of the broker to upgrade to. For a list of
supported instance types, see
https://docs.aws.amazon.com/amazon-mq/latest/developer-guide//broker.html#broker-instance-types


=head2 Logs => MQ_Logs

The list of information about logs to be enabled for the specified
broker.


=head2 SecurityGroups => ArrayRef[Str|Undef]

The list of security groups (1 minimum, 5 maximum) that authorize
connections to brokers.


=head2 _request_id => Str


=cut


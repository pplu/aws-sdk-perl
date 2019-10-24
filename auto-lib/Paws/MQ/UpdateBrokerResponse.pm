
package Paws::MQ::UpdateBrokerResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::MQ::Types qw/MQ_Logs MQ_ConfigurationId/;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => Bool);
  has BrokerId => (is => 'ro', isa => Str);
  has Configuration => (is => 'ro', isa => MQ_ConfigurationId);
  has EngineVersion => (is => 'ro', isa => Str);
  has Logs => (is => 'ro', isa => MQ_Logs);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'Configuration' => {
                                    'class' => 'Paws::MQ::ConfigurationId',
                                    'type' => 'MQ_ConfigurationId'
                                  },
               'AutoMinorVersionUpgrade' => {
                                              'type' => 'Bool'
                                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BrokerId' => {
                               'type' => 'Str'
                             },
               'Logs' => {
                           'class' => 'Paws::MQ::Logs',
                           'type' => 'MQ_Logs'
                         }
             },
  'NameInRequest' => {
                       'EngineVersion' => 'engineVersion',
                       'Configuration' => 'configuration',
                       'AutoMinorVersionUpgrade' => 'autoMinorVersionUpgrade',
                       'BrokerId' => 'brokerId',
                       'Logs' => 'logs'
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


=head2 Logs => MQ_Logs

The list of information about logs to be enabled for the specified
broker.


=head2 _request_id => Str


=cut


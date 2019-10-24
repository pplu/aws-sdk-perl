
package Paws::MQ::DescribeBrokerResponse;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::MQ::Types qw/MQ_Configurations MQ___mapOf__string MQ_WeeklyStartTime MQ_LogsSummary MQ_UserSummary MQ_BrokerInstance/;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => Bool);
  has BrokerArn => (is => 'ro', isa => Str);
  has BrokerId => (is => 'ro', isa => Str);
  has BrokerInstances => (is => 'ro', isa => ArrayRef[MQ_BrokerInstance]);
  has BrokerName => (is => 'ro', isa => Str);
  has BrokerState => (is => 'ro', isa => Str);
  has Configurations => (is => 'ro', isa => MQ_Configurations);
  has Created => (is => 'ro', isa => Str);
  has DeploymentMode => (is => 'ro', isa => Str);
  has EngineType => (is => 'ro', isa => Str);
  has EngineVersion => (is => 'ro', isa => Str);
  has HostInstanceType => (is => 'ro', isa => Str);
  has Logs => (is => 'ro', isa => MQ_LogsSummary);
  has MaintenanceWindowStartTime => (is => 'ro', isa => MQ_WeeklyStartTime);
  has PendingEngineVersion => (is => 'ro', isa => Str);
  has PubliclyAccessible => (is => 'ro', isa => Bool);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SubnetIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Tags => (is => 'ro', isa => MQ___mapOf__string);
  has Users => (is => 'ro', isa => ArrayRef[MQ_UserSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Users' => {
                            'class' => 'Paws::MQ::UserSummary',
                            'type' => 'ArrayRef[MQ_UserSummary]'
                          },
               'SubnetIds' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'HostInstanceType' => {
                                       'type' => 'Str'
                                     },
               'DeploymentMode' => {
                                     'type' => 'Str'
                                   },
               'BrokerInstances' => {
                                      'class' => 'Paws::MQ::BrokerInstance',
                                      'type' => 'ArrayRef[MQ_BrokerInstance]'
                                    },
               'PendingEngineVersion' => {
                                           'type' => 'Str'
                                         },
               'AutoMinorVersionUpgrade' => {
                                              'type' => 'Bool'
                                            },
               'BrokerId' => {
                               'type' => 'Str'
                             },
               'Configurations' => {
                                     'class' => 'Paws::MQ::Configurations',
                                     'type' => 'MQ_Configurations'
                                   },
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'BrokerName' => {
                                 'type' => 'Str'
                               },
               'EngineType' => {
                                 'type' => 'Str'
                               },
               'BrokerArn' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BrokerState' => {
                                  'type' => 'Str'
                                },
               'Created' => {
                              'type' => 'Str'
                            },
               'Tags' => {
                           'class' => 'Paws::MQ::__mapOf__string',
                           'type' => 'MQ___mapOf__string'
                         },
               'PubliclyAccessible' => {
                                         'type' => 'Bool'
                                       },
               'MaintenanceWindowStartTime' => {
                                                 'class' => 'Paws::MQ::WeeklyStartTime',
                                                 'type' => 'MQ_WeeklyStartTime'
                                               },
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   },
               'Logs' => {
                           'class' => 'Paws::MQ::LogsSummary',
                           'type' => 'MQ_LogsSummary'
                         }
             },
  'NameInRequest' => {
                       'Users' => 'users',
                       'SubnetIds' => 'subnetIds',
                       'HostInstanceType' => 'hostInstanceType',
                       'DeploymentMode' => 'deploymentMode',
                       'BrokerInstances' => 'brokerInstances',
                       'PendingEngineVersion' => 'pendingEngineVersion',
                       'AutoMinorVersionUpgrade' => 'autoMinorVersionUpgrade',
                       'BrokerId' => 'brokerId',
                       'Configurations' => 'configurations',
                       'EngineVersion' => 'engineVersion',
                       'BrokerName' => 'brokerName',
                       'EngineType' => 'engineType',
                       'BrokerArn' => 'brokerArn',
                       'Created' => 'created',
                       'BrokerState' => 'brokerState',
                       'Tags' => 'tags',
                       'PubliclyAccessible' => 'publiclyAccessible',
                       'MaintenanceWindowStartTime' => 'maintenanceWindowStartTime',
                       'SecurityGroups' => 'securityGroups',
                       'Logs' => 'logs'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::DescribeBrokerResponse

=head1 ATTRIBUTES


=head2 AutoMinorVersionUpgrade => Bool

Required. Enables automatic upgrades to new minor versions for brokers,
as Apache releases the versions. The automatic upgrades occur during
the maintenance window of the broker or after a manual broker reboot.


=head2 BrokerArn => Str

The Amazon Resource Name (ARN) of the broker.


=head2 BrokerId => Str

The unique ID that Amazon MQ generates for the broker.


=head2 BrokerInstances => ArrayRef[MQ_BrokerInstance]

A list of information about allocated brokers.


=head2 BrokerName => Str

The name of the broker. This value must be unique in your AWS account,
1-50 characters long, must contain only letters, numbers, dashes, and
underscores, and must not contain whitespaces, brackets, wildcard
characters, or special characters.


=head2 BrokerState => Str

The status of the broker.

Valid values are: C<"CREATION_IN_PROGRESS">, C<"CREATION_FAILED">, C<"DELETION_IN_PROGRESS">, C<"RUNNING">, C<"REBOOT_IN_PROGRESS">
=head2 Configurations => MQ_Configurations

The list of all revisions for the specified configuration.


=head2 Created => Str

The time when the broker was created.


=head2 DeploymentMode => Str

Required. The deployment mode of the broker.

Valid values are: C<"SINGLE_INSTANCE">, C<"ACTIVE_STANDBY_MULTI_AZ">
=head2 EngineType => Str

Required. The type of broker engine. Note: Currently, Amazon MQ
supports only ACTIVEMQ.

Valid values are: C<"ACTIVEMQ">
=head2 EngineVersion => Str

The version of the broker engine. For a list of supported engine
versions, see
https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html


=head2 HostInstanceType => Str

The broker's instance type.


=head2 Logs => MQ_LogsSummary

The list of information about logs currently enabled and pending to be
deployed for the specified broker.


=head2 MaintenanceWindowStartTime => MQ_WeeklyStartTime

The parameters that determine the WeeklyStartTime.


=head2 PendingEngineVersion => Str

The version of the broker engine to upgrade to. For a list of supported
engine versions, see
https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html


=head2 PubliclyAccessible => Bool

Required. Enables connections from applications outside of the VPC that
hosts the broker's subnets.


=head2 SecurityGroups => ArrayRef[Str|Undef]

Required. The list of rules (1 minimum, 125 maximum) that authorize
connections to brokers.


=head2 SubnetIds => ArrayRef[Str|Undef]

The list of groups (2 maximum) that define which subnets and IP ranges
the broker can use from different Availability Zones. A SINGLE_INSTANCE
deployment requires one subnet (for example, the default subnet). An
ACTIVE_STANDBY_MULTI_AZ deployment requires two subnets.


=head2 Tags => MQ___mapOf__string

The list of all tags associated with this broker.


=head2 Users => ArrayRef[MQ_UserSummary]

The list of all ActiveMQ usernames for the specified broker.


=head2 _request_id => Str


=cut


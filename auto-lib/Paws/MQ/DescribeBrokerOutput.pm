# Generated from default/object.tt
package Paws::MQ::DescribeBrokerOutput;
  use Moo;
  use Types::Standard qw/Bool Str ArrayRef Undef/;
  use Paws::MQ::Types qw/MQ_BrokerInstance MQ_WeeklyStartTime MQ___mapOf__string MQ_Configurations MQ_UserSummary MQ_EncryptionOptions MQ_LogsSummary/;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => Bool);
  has BrokerArn => (is => 'ro', isa => Str);
  has BrokerId => (is => 'ro', isa => Str);
  has BrokerInstances => (is => 'ro', isa => ArrayRef[MQ_BrokerInstance]);
  has BrokerName => (is => 'ro', isa => Str);
  has BrokerState => (is => 'ro', isa => Str);
  has Configurations => (is => 'ro', isa => MQ_Configurations);
  has Created => (is => 'ro', isa => Str);
  has DeploymentMode => (is => 'ro', isa => Str);
  has EncryptionOptions => (is => 'ro', isa => MQ_EncryptionOptions);
  has EngineType => (is => 'ro', isa => Str);
  has EngineVersion => (is => 'ro', isa => Str);
  has HostInstanceType => (is => 'ro', isa => Str);
  has Logs => (is => 'ro', isa => MQ_LogsSummary);
  has MaintenanceWindowStartTime => (is => 'ro', isa => MQ_WeeklyStartTime);
  has PendingEngineVersion => (is => 'ro', isa => Str);
  has PendingHostInstanceType => (is => 'ro', isa => Str);
  has PendingSecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has PubliclyAccessible => (is => 'ro', isa => Bool);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SubnetIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Tags => (is => 'ro', isa => MQ___mapOf__string);
  has Users => (is => 'ro', isa => ArrayRef[MQ_UserSummary]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Logs' => {
                           'type' => 'MQ_LogsSummary',
                           'class' => 'Paws::MQ::LogsSummary'
                         },
               'DeploymentMode' => {
                                     'type' => 'Str'
                                   },
               'BrokerState' => {
                                  'type' => 'Str'
                                },
               'BrokerName' => {
                                 'type' => 'Str'
                               },
               'Configurations' => {
                                     'class' => 'Paws::MQ::Configurations',
                                     'type' => 'MQ_Configurations'
                                   },
               'HostInstanceType' => {
                                       'type' => 'Str'
                                     },
               'MaintenanceWindowStartTime' => {
                                                 'class' => 'Paws::MQ::WeeklyStartTime',
                                                 'type' => 'MQ_WeeklyStartTime'
                                               },
               'PendingSecurityGroups' => {
                                            'type' => 'ArrayRef[Str|Undef]'
                                          },
               'Users' => {
                            'type' => 'ArrayRef[MQ_UserSummary]',
                            'class' => 'Paws::MQ::UserSummary'
                          },
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'Created' => {
                              'type' => 'Str'
                            },
               'AutoMinorVersionUpgrade' => {
                                              'type' => 'Bool'
                                            },
               'PubliclyAccessible' => {
                                         'type' => 'Bool'
                                       },
               'EngineType' => {
                                 'type' => 'Str'
                               },
               'Tags' => {
                           'type' => 'MQ___mapOf__string',
                           'class' => 'Paws::MQ::__mapOf__string'
                         },
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   },
               'BrokerId' => {
                               'type' => 'Str'
                             },
               'PendingHostInstanceType' => {
                                              'type' => 'Str'
                                            },
               'SubnetIds' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'EncryptionOptions' => {
                                        'class' => 'Paws::MQ::EncryptionOptions',
                                        'type' => 'MQ_EncryptionOptions'
                                      },
               'BrokerInstances' => {
                                      'type' => 'ArrayRef[MQ_BrokerInstance]',
                                      'class' => 'Paws::MQ::BrokerInstance'
                                    },
               'BrokerArn' => {
                                'type' => 'Str'
                              },
               'PendingEngineVersion' => {
                                           'type' => 'Str'
                                         }
             },
  'NameInRequest' => {
                       'BrokerId' => 'brokerId',
                       'SubnetIds' => 'subnetIds',
                       'PendingHostInstanceType' => 'pendingHostInstanceType',
                       'EncryptionOptions' => 'encryptionOptions',
                       'BrokerArn' => 'brokerArn',
                       'BrokerInstances' => 'brokerInstances',
                       'PendingEngineVersion' => 'pendingEngineVersion',
                       'BrokerName' => 'brokerName',
                       'BrokerState' => 'brokerState',
                       'Logs' => 'logs',
                       'DeploymentMode' => 'deploymentMode',
                       'MaintenanceWindowStartTime' => 'maintenanceWindowStartTime',
                       'PendingSecurityGroups' => 'pendingSecurityGroups',
                       'HostInstanceType' => 'hostInstanceType',
                       'Configurations' => 'configurations',
                       'Users' => 'users',
                       'EngineVersion' => 'engineVersion',
                       'Created' => 'created',
                       'PubliclyAccessible' => 'publiclyAccessible',
                       'AutoMinorVersionUpgrade' => 'autoMinorVersionUpgrade',
                       'EngineType' => 'engineType',
                       'Tags' => 'tags',
                       'SecurityGroups' => 'securityGroups'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::DescribeBrokerOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::DescribeBrokerOutput object:

  $service_obj->Method(Att1 => { AutoMinorVersionUpgrade => $value, ..., Users => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::DescribeBrokerOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoMinorVersionUpgrade

=head1 DESCRIPTION

The version of the broker engine. For a list of supported engine
versions, see
https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html

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


=head2 Configurations => MQ_Configurations

  The list of all revisions for the specified configuration.


=head2 Created => Str

  The time when the broker was created.


=head2 DeploymentMode => Str

  Required. The deployment mode of the broker.


=head2 EncryptionOptions => MQ_EncryptionOptions

  Encryption options for the broker.


=head2 EngineType => Str

  Required. The type of broker engine. Note: Currently, Amazon MQ
supports only ACTIVEMQ.


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


=head2 PendingHostInstanceType => Str

  The host instance type of the broker to upgrade to. For a list of
supported instance types, see
https://docs.aws.amazon.com/amazon-mq/latest/developer-guide//broker.html#broker-instance-types


=head2 PendingSecurityGroups => ArrayRef[Str|Undef]

  The list of pending security groups to authorize connections to
brokers.


=head2 PubliclyAccessible => Bool

  Required. Enables connections from applications outside of the VPC that
hosts the broker's subnets.


=head2 SecurityGroups => ArrayRef[Str|Undef]

  The list of security groups (1 minimum, 5 maximum) that authorize
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



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


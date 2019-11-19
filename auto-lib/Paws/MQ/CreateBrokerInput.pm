# Generated from default/object.tt
package Paws::MQ::CreateBrokerInput;
  use Moo;
  use Types::Standard qw/Bool Str Undef ArrayRef/;
  use Paws::MQ::Types qw/MQ_WeeklyStartTime MQ_ConfigurationId MQ___mapOf__string MQ_EncryptionOptions MQ_Logs MQ_User/;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => Bool);
  has BrokerName => (is => 'ro', isa => Str);
  has Configuration => (is => 'ro', isa => MQ_ConfigurationId);
  has CreatorRequestId => (is => 'ro', isa => Str);
  has DeploymentMode => (is => 'ro', isa => Str);
  has EncryptionOptions => (is => 'ro', isa => MQ_EncryptionOptions);
  has EngineType => (is => 'ro', isa => Str);
  has EngineVersion => (is => 'ro', isa => Str);
  has HostInstanceType => (is => 'ro', isa => Str);
  has Logs => (is => 'ro', isa => MQ_Logs);
  has MaintenanceWindowStartTime => (is => 'ro', isa => MQ_WeeklyStartTime);
  has PubliclyAccessible => (is => 'ro', isa => Bool);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SubnetIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Tags => (is => 'ro', isa => MQ___mapOf__string);
  has Users => (is => 'ro', isa => ArrayRef[MQ_User]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'EncryptionOptions' => 'encryptionOptions',
                       'SubnetIds' => 'subnetIds',
                       'Configuration' => 'configuration',
                       'CreatorRequestId' => 'creatorRequestId',
                       'Users' => 'users',
                       'EngineVersion' => 'engineVersion',
                       'BrokerName' => 'brokerName',
                       'Logs' => 'logs',
                       'DeploymentMode' => 'deploymentMode',
                       'MaintenanceWindowStartTime' => 'maintenanceWindowStartTime',
                       'HostInstanceType' => 'hostInstanceType',
                       'SecurityGroups' => 'securityGroups',
                       'EngineType' => 'engineType',
                       'AutoMinorVersionUpgrade' => 'autoMinorVersionUpgrade',
                       'PubliclyAccessible' => 'publiclyAccessible',
                       'Tags' => 'tags'
                     },
  'types' => {
               'SubnetIds' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'EncryptionOptions' => {
                                        'type' => 'MQ_EncryptionOptions',
                                        'class' => 'Paws::MQ::EncryptionOptions'
                                      },
               'CreatorRequestId' => {
                                       'type' => 'Str'
                                     },
               'Configuration' => {
                                    'class' => 'Paws::MQ::ConfigurationId',
                                    'type' => 'MQ_ConfigurationId'
                                  },
               'HostInstanceType' => {
                                       'type' => 'Str'
                                     },
               'MaintenanceWindowStartTime' => {
                                                 'type' => 'MQ_WeeklyStartTime',
                                                 'class' => 'Paws::MQ::WeeklyStartTime'
                                               },
               'DeploymentMode' => {
                                     'type' => 'Str'
                                   },
               'Logs' => {
                           'class' => 'Paws::MQ::Logs',
                           'type' => 'MQ_Logs'
                         },
               'BrokerName' => {
                                 'type' => 'Str'
                               },
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'Users' => {
                            'type' => 'ArrayRef[MQ_User]',
                            'class' => 'Paws::MQ::User'
                          },
               'Tags' => {
                           'type' => 'MQ___mapOf__string',
                           'class' => 'Paws::MQ::__mapOf__string'
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
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::CreateBrokerInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::CreateBrokerInput object:

  $service_obj->Method(Att1 => { AutoMinorVersionUpgrade => $value, ..., Users => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::CreateBrokerInput object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoMinorVersionUpgrade

=head1 DESCRIPTION

Required. The time period during which Amazon MQ applies pending
updates or patches to the broker.

=head1 ATTRIBUTES


=head2 AutoMinorVersionUpgrade => Bool

  Required. Enables automatic upgrades to new minor versions for brokers,
as Apache releases the versions. The automatic upgrades occur during
the maintenance window of the broker or after a manual broker reboot.


=head2 BrokerName => Str

  Required. The name of the broker. This value must be unique in your AWS
account, 1-50 characters long, must contain only letters, numbers,
dashes, and underscores, and must not contain whitespaces, brackets,
wildcard characters, or special characters.


=head2 Configuration => MQ_ConfigurationId

  A list of information about the configuration.


=head2 CreatorRequestId => Str

  The unique ID that the requester receives for the created broker.
Amazon MQ passes your ID with the API action. Note: We recommend using
a Universally Unique Identifier (UUID) for the creatorRequestId. You
may omit the creatorRequestId if your application doesn't require
idempotency.


=head2 DeploymentMode => Str

  Required. The deployment mode of the broker.


=head2 EncryptionOptions => MQ_EncryptionOptions

  Encryption options for the broker.


=head2 EngineType => Str

  Required. The type of broker engine. Note: Currently, Amazon MQ
supports only ACTIVEMQ.


=head2 EngineVersion => Str

  Required. The version of the broker engine. For a list of supported
engine versions, see
https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html


=head2 HostInstanceType => Str

  Required. The broker's instance type.


=head2 Logs => MQ_Logs

  Enables Amazon CloudWatch logging for brokers.


=head2 MaintenanceWindowStartTime => MQ_WeeklyStartTime

  The parameters that determine the WeeklyStartTime.


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

  Create tags when creating the broker.


=head2 Users => ArrayRef[MQ_User]

  Required. The list of ActiveMQ users (persons or applications) who can
access queues and topics. This value can contain only alphanumeric
characters, dashes, periods, underscores, and tildes (- . _ ~). This
value must be 2-100 characters long.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


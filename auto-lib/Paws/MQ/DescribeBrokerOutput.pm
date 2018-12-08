package Paws::MQ::DescribeBrokerOutput;
  use Moose;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool', request_name => 'autoMinorVersionUpgrade', traits => ['NameInRequest']);
  has BrokerArn => (is => 'ro', isa => 'Str', request_name => 'brokerArn', traits => ['NameInRequest']);
  has BrokerId => (is => 'ro', isa => 'Str', request_name => 'brokerId', traits => ['NameInRequest']);
  has BrokerInstances => (is => 'ro', isa => 'ArrayRef[Paws::MQ::BrokerInstance]', request_name => 'brokerInstances', traits => ['NameInRequest']);
  has BrokerName => (is => 'ro', isa => 'Str', request_name => 'brokerName', traits => ['NameInRequest']);
  has BrokerState => (is => 'ro', isa => 'Str', request_name => 'brokerState', traits => ['NameInRequest']);
  has Configurations => (is => 'ro', isa => 'Paws::MQ::Configurations', request_name => 'configurations', traits => ['NameInRequest']);
  has Created => (is => 'ro', isa => 'Str', request_name => 'created', traits => ['NameInRequest']);
  has DeploymentMode => (is => 'ro', isa => 'Str', request_name => 'deploymentMode', traits => ['NameInRequest']);
  has EngineType => (is => 'ro', isa => 'Str', request_name => 'engineType', traits => ['NameInRequest']);
  has EngineVersion => (is => 'ro', isa => 'Str', request_name => 'engineVersion', traits => ['NameInRequest']);
  has HostInstanceType => (is => 'ro', isa => 'Str', request_name => 'hostInstanceType', traits => ['NameInRequest']);
  has Logs => (is => 'ro', isa => 'Paws::MQ::LogsSummary', request_name => 'logs', traits => ['NameInRequest']);
  has MaintenanceWindowStartTime => (is => 'ro', isa => 'Paws::MQ::WeeklyStartTime', request_name => 'maintenanceWindowStartTime', traits => ['NameInRequest']);
  has PendingEngineVersion => (is => 'ro', isa => 'Str', request_name => 'pendingEngineVersion', traits => ['NameInRequest']);
  has PubliclyAccessible => (is => 'ro', isa => 'Bool', request_name => 'publiclyAccessible', traits => ['NameInRequest']);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroups', traits => ['NameInRequest']);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'subnetIds', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::MQ::__mapOf__string', request_name => 'tags', traits => ['NameInRequest']);
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::MQ::UserSummary]', request_name => 'users', traits => ['NameInRequest']);
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


=head2 BrokerInstances => ArrayRef[L<Paws::MQ::BrokerInstance>]

  A list of information about allocated brokers.


=head2 BrokerName => Str

  The name of the broker. This value must be unique in your AWS account,
1-50 characters long, must contain only letters, numbers, dashes, and
underscores, and must not contain whitespaces, brackets, wildcard
characters, or special characters.


=head2 BrokerState => Str

  The status of the broker.


=head2 Configurations => L<Paws::MQ::Configurations>

  The list of all revisions for the specified configuration.


=head2 Created => Str

  The time when the broker was created.


=head2 DeploymentMode => Str

  Required. The deployment mode of the broker.


=head2 EngineType => Str

  Required. The type of broker engine. Note: Currently, Amazon MQ
supports only ACTIVEMQ.


=head2 EngineVersion => Str

  The version of the broker engine. For a list of supported engine
versions, see
https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html


=head2 HostInstanceType => Str

  The broker's instance type.


=head2 Logs => L<Paws::MQ::LogsSummary>

  The list of information about logs currently enabled and pending to be
deployed for the specified broker.


=head2 MaintenanceWindowStartTime => L<Paws::MQ::WeeklyStartTime>

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


=head2 Tags => L<Paws::MQ::__mapOf__string>

  The list of all tags associated with this broker.


=head2 Users => ArrayRef[L<Paws::MQ::UserSummary>]

  The list of all ActiveMQ usernames for the specified broker.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::MQ::DescribeBrokerResponse;
  use Moose;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoMinorVersionUpgrade');
  has BrokerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'brokerArn');
  has BrokerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'brokerId');
  has BrokerInstances => (is => 'ro', isa => 'ArrayRef[Paws::MQ::BrokerInstance]', traits => ['NameInRequest'], request_name => 'brokerInstances');
  has BrokerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'brokerName');
  has BrokerState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'brokerState');
  has Configurations => (is => 'ro', isa => 'Paws::MQ::Configurations', traits => ['NameInRequest'], request_name => 'configurations');
  has DeploymentMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentMode');
  has EngineType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineType');
  has EngineVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineVersion');
  has HostInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'hostInstanceType');
  has MaintenanceWindowStartTime => (is => 'ro', isa => 'Paws::MQ::WeeklyStartTime', traits => ['NameInRequest'], request_name => 'maintenanceWindowStartTime');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publiclyAccessible');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroups');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::MQ::UserSummary]', traits => ['NameInRequest'], request_name => 'users');

  has _request_id => (is => 'ro', isa => 'Str');
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


=head2 BrokerInstances => ArrayRef[L<Paws::MQ::BrokerInstance>]

A list of information about allocated brokers.


=head2 BrokerName => Str

The name of the broker. This value must be unique in your AWS account,
1-50 characters long, must contain only letters, numbers, dashes, and
underscores, and must not contain whitespaces, brackets, wildcard
characters, or special characters.


=head2 BrokerState => Str

The status of the broker. Possible values: CREATION_IN_PROGRESS,
CREATION_FAILED, DELETION_IN_PROGRESS, RUNNING, REBOOT_IN_PROGRESS

Valid values are: C<"CREATION_IN_PROGRESS">, C<"CREATION_FAILED">, C<"DELETION_IN_PROGRESS">, C<"RUNNING">, C<"REBOOT_IN_PROGRESS">
=head2 Configurations => L<Paws::MQ::Configurations>

The list of all revisions for the specified configuration.


=head2 DeploymentMode => Str

Required. The deployment mode of the broker. Possible values:
SINGLE_INSTANCE, ACTIVE_STANDBY_MULTI_AZ SINGLE_INSTANCE creates a
single-instance broker in a single Availability Zone.
ACTIVE_STANDBY_MULTI_AZ creates an active/standby broker for high
availability.

Valid values are: C<"SINGLE_INSTANCE">, C<"ACTIVE_STANDBY_MULTI_AZ">
=head2 EngineType => Str

Required. The type of broker engine. Note: Currently, Amazon MQ
supports only ACTIVEMQ.

Valid values are: C<"ACTIVEMQ">
=head2 EngineVersion => Str

The version of the broker engine. Note: Currently, Amazon MQ supports
only 5.15.0.


=head2 HostInstanceType => Str

The broker's instance type. Possible values: mq.t2.micro, mq.m4.large


=head2 MaintenanceWindowStartTime => L<Paws::MQ::WeeklyStartTime>

The parameters that determine the WeeklyStartTime.


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


=head2 Users => ArrayRef[L<Paws::MQ::UserSummary>]

The list of all ActiveMQ usernames for the specified broker.


=head2 _request_id => Str


=cut


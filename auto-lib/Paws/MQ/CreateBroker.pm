
package Paws::MQ::CreateBroker;
  use Moose;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoMinorVersionUpgrade');
  has BrokerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'brokerName');
  has Configuration => (is => 'ro', isa => 'Paws::MQ::ConfigurationId', traits => ['NameInRequest'], request_name => 'configuration');
  has CreatorRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creatorRequestId');
  has DeploymentMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentMode');
  has EngineType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineType');
  has EngineVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineVersion');
  has HostInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'hostInstanceType');
  has Logs => (is => 'ro', isa => 'Paws::MQ::Logs', traits => ['NameInRequest'], request_name => 'logs');
  has MaintenanceWindowStartTime => (is => 'ro', isa => 'Paws::MQ::WeeklyStartTime', traits => ['NameInRequest'], request_name => 'maintenanceWindowStartTime');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publiclyAccessible');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroups');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds');
  has Tags => (is => 'ro', isa => 'Paws::MQ::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::MQ::User]', traits => ['NameInRequest'], request_name => 'users');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBroker');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/brokers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MQ::CreateBrokerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::CreateBroker - Arguments for method CreateBroker on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBroker on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method CreateBroker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBroker.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $CreateBrokerResponse = $mq->CreateBroker(
      AutoMinorVersionUpgrade => 1,               # OPTIONAL
      BrokerName              => 'My__string',    # OPTIONAL
      Configuration           => {
        Id       => 'My__string',
        Revision => 1,                            # OPTIONAL
      },    # OPTIONAL
      CreatorRequestId => 'My__string',         # OPTIONAL
      DeploymentMode   => 'SINGLE_INSTANCE',    # OPTIONAL
      EngineType       => 'ACTIVEMQ',           # OPTIONAL
      EngineVersion    => 'My__string',         # OPTIONAL
      HostInstanceType => 'My__string',         # OPTIONAL
      Logs             => {
        Audit   => 1,
        General => 1,
      },                                        # OPTIONAL
      MaintenanceWindowStartTime => {
        DayOfWeek => 'MONDAY'
        , # values: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY; OPTIONAL
        TimeOfDay => 'My__string',
        TimeZone  => 'My__string',
      },    # OPTIONAL
      PubliclyAccessible => 1,                                    # OPTIONAL
      SecurityGroups     => [ 'My__string', ... ],                # OPTIONAL
      SubnetIds          => [ 'My__string', ... ],                # OPTIONAL
      Tags               => { 'My__string' => 'My__string', },    # OPTIONAL
      Users              => [
        {
          ConsoleAccess => 1,
          Groups        => [ 'My__string', ... ],
          Password      => 'My__string',
          Username      => 'My__string',
        },
        ...
      ],                                                          # OPTIONAL
    );

    # Results:
    my $BrokerArn = $CreateBrokerResponse->BrokerArn;
    my $BrokerId  = $CreateBrokerResponse->BrokerId;

    # Returns a L<Paws::MQ::CreateBrokerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mq/CreateBroker>

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



=head2 Configuration => L<Paws::MQ::ConfigurationId>

A list of information about the configuration.



=head2 CreatorRequestId => Str

The unique ID that the requester receives for the created broker.
Amazon MQ passes your ID with the API action. Note: We recommend using
a Universally Unique Identifier (UUID) for the creatorRequestId. You
may omit the creatorRequestId if your application doesn't require
idempotency.



=head2 DeploymentMode => Str

Required. The deployment mode of the broker.

Valid values are: C<"SINGLE_INSTANCE">, C<"ACTIVE_STANDBY_MULTI_AZ">

=head2 EngineType => Str

Required. The type of broker engine. Note: Currently, Amazon MQ
supports only ACTIVEMQ.

Valid values are: C<"ACTIVEMQ">

=head2 EngineVersion => Str

Required. The version of the broker engine. For a list of supported
engine versions, see
https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html



=head2 HostInstanceType => Str

Required. The broker's instance type.



=head2 Logs => L<Paws::MQ::Logs>

Enables Amazon CloudWatch logging for brokers.



=head2 MaintenanceWindowStartTime => L<Paws::MQ::WeeklyStartTime>

The parameters that determine the WeeklyStartTime.



=head2 PubliclyAccessible => Bool

Required. Enables connections from applications outside of the VPC that
hosts the broker's subnets.



=head2 SecurityGroups => ArrayRef[Str|Undef]

The list of rules (1 minimum, 125 maximum) that authorize connections
to brokers.



=head2 SubnetIds => ArrayRef[Str|Undef]

The list of groups (2 maximum) that define which subnets and IP ranges
the broker can use from different Availability Zones. A SINGLE_INSTANCE
deployment requires one subnet (for example, the default subnet). An
ACTIVE_STANDBY_MULTI_AZ deployment requires two subnets.



=head2 Tags => L<Paws::MQ::__mapOf__string>

Create tags when creating the broker.



=head2 Users => ArrayRef[L<Paws::MQ::User>]

Required. The list of ActiveMQ users (persons or applications) who can
access queues and topics. This value can contain only alphanumeric
characters, dashes, periods, underscores, and tildes (- . _ ~). This
value must be 2-100 characters long.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBroker in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

